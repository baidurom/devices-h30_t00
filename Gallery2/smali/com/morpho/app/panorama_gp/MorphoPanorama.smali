.class public Lcom/morpho/app/panorama_gp/MorphoPanorama;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;,
        Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;,
        Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;,
        Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;,
        Lcom/morpho/app/panorama_gp/MorphoPanorama$ShutterCallback;
    }
.end annotation


# static fields
.field private static final APP_DIRECTION_HORIZONTAL:I = 0x0

.field private static final APP_DIRECTION_LANDSCAPE:I = 0x2

.field private static final APP_DIRECTION_LANDSCAPE_HORIZONTAL:I = 0x2

.field private static final APP_DIRECTION_LANDSCAPE_VERTICAL:I = 0x3

.field private static final APP_DIRECTION_PORTRAIT:I = 0x0

.field private static final APP_DIRECTION_PORTRAIT_HORIZONTAL:I = 0x0

.field private static final APP_DIRECTION_PORTRAIT_VERTICAL:I = 0x1

.field private static final APP_DIRECTION_VERTICAL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final BACKGROUNDC_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BOUNDARY_DIFF_ANGLE:F = 0.0f

.field private static final CLASS:Ljava/lang/String; = "MorphoPanorama:"

.field private static final FORMAT:Ljava/lang/String; = "YVU420_SEMIPLANAR"

.field private static final LOG_TAG:Ljava/lang/String; = "HwCamera"

.field private static final MATRIX_SIZE:I = 0x10

.field private static final MAX_DST_IMG_WIDTH:I = 0x61a8

.field private static final MIN_SHOOT_HEIGHT:I = 0xf0

.field private static final MIN_SHOOT_WIDTH:I = 0x140

.field private static final NS2MS:F = 1.0E-6f

.field private static final SC_TYPE_BEFOREHAND:I = 0x2

.field private static final SC_TYPE_EVERY_TIME:I = 0x1

.field private static final SC_TYPE_NONE:I = 0x0

.field private static final SENSOR_CORRECTION_EXTRA_TIME:I = 0x3e8

.field private static final SENSOR_CORRECTION_TIME:I = 0x7d0

.field private static final SENSOR_CORRECTION_TIME_MAX:I = 0x2710

.field private static final SEPARATER:Ljava/lang/String; = "\t"

.field private static final USE_MULTI_THREAD:Z = true

.field private static final mPreviewCroppingRatio:I = 0x5

.field private static mSaveOutputImageTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "ST_WRITE_TO_STATIC_FROM_INSTANCE_METHOD"
        }
    .end annotation
.end field


# instance fields
.field private config:Landroid/content/res/Configuration;

.field private inRM:[F

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerIx:I

.field private mAccelerometerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccelerometerTimeStamp:J

.field private mAccelerometerValues:[F

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAppDeviceRotation:I

.field private mAppPanoramaDirection:I

.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraPictureH:I

.field private mCameraPictureW:I

.field private mCameraPreviewBuff:[B

.field private mCameraPreviewH:I

.field private mCameraPreviewW:I

.field private mCaptureOritation:I

.field private mCaptureSucess:Landroid/graphics/Bitmap;

.field private mCaptureWarning:Landroid/graphics/Bitmap;

.field private mCntProcessd:I

.field private mCntReqShoot:I

.field private mDirection:[I

.field mDirsAnimeIds:[I

.field private mDispPreviewImage:Landroid/graphics/Bitmap;

.field private mGuideImage_In:Landroid/graphics/Bitmap;

.field private mGuideImage_Out:Landroid/graphics/Bitmap;

.field private mGyroCorrectionValue:[F

.field private mGyroSensorDeltaRM:Lcom/morpho/utils/Matrix3x3;

.field private mGyroSensorDeltaRV:[F

.field private mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

.field private mGyroValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeIx:I

.field private mGyroscopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImageID:[I

.field private mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

.field private mIsAttachTimeOut:Z

.field private mIsHorizontalShot:Z

.field private mIsProcessing:Z

.field private mIsShooting:Z

.field private mJpegProgress:[I

.field private mLastGuidePos:I

.field private mLastPhotoUri:Landroid/net/Uri;

.field private mMASensorRM:Lcom/morpho/utils/Matrix3x3;

.field private mMagneticField:Landroid/hardware/Sensor;

.field private mMagneticFieldTimeStamp:J

.field private mMagneticFieldValues:[F

.field private mMarginBottom:I

.field private mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

.field private mMotionData:[B

.field private mMotionlessThres:I

.field private mOrientation:I

.field private mOrientationIx:I

.field private mOrientationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationValues:[F

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

.field private mPhotoModule:Lcom/android/hwcamera/PhotoModule;

.field private mPrevDirection:I

.field private mPrevSensorRM:Lcom/morpho/utils/Matrix3x3;

.field private mPreviewCount:I

.field private mPreviewHeight:I

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mProcessPreview:Z

.field private mRVSensorRM:Lcom/morpho/utils/Matrix3x3;

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mRotationVectorIx:I

.field private mRotationVectorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSCLenearLayout:Landroid/widget/LinearLayout;

.field private mSCProgressBar:Landroid/widget/ProgressBar;

.field private mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

.field private mSCType:I

.field private mSCWaitTime:I

.field private mSaveInputImages:Z

.field private mSensorInfoMngList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorSyncObj:Ljava/lang/Object;

.field private mShootingDate:Ljava/lang/String;

.field private mShootingDateLong:J

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mStatus:[I

.field mStillProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;",
            ">;"
        }
    .end annotation
.end field

.field mStillProcTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

.field private mSyncObj:Ljava/lang/Object;

.field private mThumbnailRatio:D

.field private mUseImage:I

.field private mUseSensorAWF:Z

.field private mUseSensorThres:I

.field private mUseThres:I

.field private needReInit:Z

.field private prev_timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->BOUNDARY_DIFF_ANGLE:F

    .line 256
    const/16 v0, 0x40

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->BACKGROUNDC_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    .line 140
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    .line 141
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMotionData:[B

    .line 142
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStatus:[I

    .line 143
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirection:[I

    .line 145
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    .line 146
    const/16 v0, 0xa

    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseThres:I

    .line 147
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMotionlessThres:I

    .line 157
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorSyncObj:Ljava/lang/Object;

    .line 163
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    .line 164
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseSensorAWF:Z

    .line 166
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastPhotoUri:Landroid/net/Uri;

    .line 167
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    .line 168
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I

    .line 170
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

    .line 190
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppDeviceRotation:I

    .line 191
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    .line 203
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCType:I

    .line 205
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroCorrectionValue:[F

    .line 213
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscope:Landroid/hardware/Sensor;

    .line 214
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVector:Landroid/hardware/Sensor;

    .line 215
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometer:Landroid/hardware/Sensor;

    .line 216
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticField:Landroid/hardware/Sensor;

    .line 222
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeIx:I

    .line 223
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerIx:I

    .line 224
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationIx:I

    .line 225
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorIx:I

    .line 236
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationValues:[F

    .line 238
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->inRM:[F

    .line 253
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I

    .line 254
    new-instance v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$ShutterCallback;

    invoke-direct {v0, v3}, Lcom/morpho/app/panorama_gp/MorphoPanorama$ShutterCallback;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$1;)V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 257
    const-wide v0, 0x3fefae147ae147aeL

    iput-wide v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    .line 267
    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAnimationView:Landroid/widget/ImageView;

    .line 268
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientation:I

    .line 269
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->needReInit:Z

    .line 271
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    .line 272
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    .line 273
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    .line 274
    iput-boolean v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsHorizontalShot:Z

    .line 277
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsProcessing:Z

    .line 280
    iput v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureOritation:I

    .line 938
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    .line 2485
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsAttachTimeOut:Z

    .line 2859
    return-void

    .line 938
    nop

    :array_0
    .array-data 0x4
        0x2at 0x1t 0x10t 0x7ft
        0x2ct 0x1t 0x10t 0x7ft
        0x2dt 0x1t 0x10t 0x7ft
        0x29t 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsAttachTimeOut:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getInputDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/morpho/core/MorphoPanoramaGP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/morpho/app/panorama_gp/MorphoPanorama;Lcom/morpho/core/MorphoPanoramaGP;)Lcom/morpho/core/MorphoPanoramaGP;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/morpho/app/panorama_gp/MorphoPanorama;[B)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishAttachStillImageTask()V

    return-void
.end method

.method static synthetic access$200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->savePanoramaInputData()V

    return-void
.end method

.method static synthetic access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDateLong:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/morpho/app/panorama_gp/MorphoPanorama;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotateProgressLayout()V

    return-void
.end method

.method static synthetic access$2700(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCType:I

    return v0
.end method

.method static synthetic access$2800(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCLenearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onPanoramaFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showDirectionArrow()V

    return-void
.end method

.method static synthetic access$3000(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showLastPhoto()V

    return-void
.end method

.method static synthetic access$3100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/morpho/app/panorama_gp/MorphoPanorama;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/PhotoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    return v0
.end method

.method static synthetic access$600(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hideAllDirectionArrows()V

    return-void
.end method

.method static synthetic access$700(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->clearAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I

    return v0
.end method

.method static synthetic access$808(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I

    return v0
.end method

.method static synthetic access$900(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    return v0
.end method

.method private addImageAsApplication(Ljava/lang/String;I)V
    .locals 3
    .parameter "file_path"
    .parameter "orientation"

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/morpho/utils/multimedia/JpegHandler;->setExifData(Ljava/lang/String;Landroid/location/Location;I)V

    .line 2527
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/hwcamera/PhotoModule;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    invoke-static {v0, p1, v1, p2, v2}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastPhotoUri:Landroid/net/Uri;

    .line 2529
    return-void
.end method

.method private addStillImage(Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;)V
    .locals 1
    .parameter "dat"

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

    if-nez v0, :cond_0

    .line 1673
    new-instance v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

    invoke-direct {v0, p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

    .line 1674
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->start()V

    .line 1676
    :cond_0
    return-void
.end method

.method private calcShortEdgeInBiggerCondition()I
    .locals 13

    .prologue
    .line 628
    iget v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    int-to-double v9, v9

    iget-wide v11, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    mul-double/2addr v9, v11

    double-to-int v2, v9

    .line 629
    .local v2, disp_w:I
    iget v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    int-to-double v9, v9

    iget-wide v11, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    mul-double/2addr v9, v11

    double-to-int v1, v9

    .line 633
    .local v1, disp_h:I
    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    .line 634
    .local v3, panoramaBarHeight:I
    int-to-float v9, v2

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 635
    .local v6, ratio:F
    move v7, v2

    .line 637
    .local v7, real_disp_w:I
    int-to-float v9, v7

    int-to-float v10, v3

    mul-float/2addr v10, v6

    div-float v8, v9, v10

    .line 639
    .local v8, scaleRatio:F
    iget v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    .line 640
    .local v4, preview_img_height:I
    iget v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v5, v9

    .line 642
    .local v5, preview_img_width:I
    int-to-float v9, v4

    int-to-float v10, v5

    div-float v0, v9, v10

    .line 644
    .local v0, aspect:F
    int-to-float v9, v7

    mul-float/2addr v9, v0

    float-to-int v9, v9

    mul-int/lit8 v9, v9, 0x5a

    div-int/lit8 v9, v9, 0x64

    return v9
.end method

.method private calcShortEdgeInSmallerCondition()I
    .locals 13

    .prologue
    .line 649
    iget v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    int-to-double v9, v9

    iget-wide v11, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    mul-double/2addr v9, v11

    double-to-int v2, v9

    .line 650
    .local v2, disp_w:I
    iget v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    int-to-double v9, v9

    iget-wide v11, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    mul-double/2addr v9, v11

    double-to-int v1, v9

    .line 654
    .local v1, disp_h:I
    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    .line 655
    .local v3, panoramaBarHeight:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float v6, v9, v10

    .line 656
    .local v6, ratio:F
    move v7, v1

    .line 658
    .local v7, real_disp_w:I
    int-to-float v9, v7

    int-to-float v10, v3

    mul-float/2addr v10, v6

    div-float v8, v9, v10

    .line 660
    .local v8, scaleRatio:F
    iget v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    .line 661
    .local v4, preview_img_height:I
    iget v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v5, v9

    .line 663
    .local v5, preview_img_width:I
    int-to-float v9, v4

    int-to-float v10, v5

    div-float v0, v9, v10

    .line 665
    .local v0, aspect:F
    int-to-float v9, v7

    mul-float/2addr v9, v0

    float-to-int v9, v9

    mul-int/lit8 v9, v9, 0x5a

    div-int/lit8 v9, v9, 0x64

    return v9
.end method

.method private calculatePanoramaPreviewSize()V
    .locals 8

    .prologue
    .line 682
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 683
    .local v2, rp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 684
    .local v1, longEdgeLength:I
    const/4 v3, 0x0

    .line 685
    .local v3, shortEdgeLength:I
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v4

    if-nez v4, :cond_3

    .line 686
    :cond_1
    iget v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 687
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->calcShortEdgeInBiggerCondition()I

    move-result v3

    .line 688
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 689
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 690
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 707
    :goto_0
    move-object v0, v2

    .line 708
    .local v0, frp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v5, Lcom/morpho/app/panorama_gp/MorphoPanorama$1;

    invoke-direct {v5, p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$1;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 714
    return-void

    .line 692
    .end local v0           #frp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 693
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 696
    :cond_3
    iget v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 697
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->calcShortEdgeInSmallerCondition()I

    move-result v3

    .line 698
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 699
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 700
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 702
    :cond_4
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 703
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private checkAngleDiff([F[FF)Z
    .locals 4
    .parameter "cur_mat"
    .parameter "prev_mat"
    .parameter "abs_boundary_angle"

    .prologue
    .line 978
    const/4 v3, 0x3

    new-array v0, v3, [F

    .line 980
    .local v0, diff:[F
    const/4 v2, 0x1

    .line 981
    .local v2, ret:Z
    invoke-static {v0, p1, p2}, Lcom/morpho/utils/Matrix3x3;->getAngleDiff([F[F[F)V

    .line 982
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 983
    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p3

    if-lez v3, :cond_0

    .line 984
    const/4 v2, 0x0

    .line 982
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    :cond_1
    return v2
.end method

.method private clearAnimation()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAnimationView:Landroid/widget/ImageView;

    .line 1177
    :cond_0
    return-void
.end method

.method private createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 1800
    array-length v1, p1

    invoke-static {v1}, Lcom/morpho/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1801
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1802
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1803
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1804
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1805
    return-object v0
.end method

.method private directionFixed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1528
    iget v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPrevDirection:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPrevDirection:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawPanoramaPreviewImage()Landroid/graphics/Canvas;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 2403
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    :cond_0
    move-object v0, v7

    .line 2426
    :goto_0
    return-object v0

    .line 2406
    :cond_1
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2407
    .local v6, sw:I
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2408
    .local v4, sh:I
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2409
    .local v3, dw:I
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2410
    .local v1, dh:I
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2411
    .local v0, canvas:Landroid/graphics/Canvas;
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v10, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2412
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2414
    .local v2, dst:Landroid/graphics/Rect;
    iget v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    packed-switch v8, :pswitch_data_0

    .line 2417
    new-instance v5, Landroid/graphics/Rect;

    mul-int/lit8 v8, v4, 0x5

    div-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v4, 0x5f

    div-int/lit8 v9, v9, 0x64

    invoke-direct {v5, v10, v8, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2425
    .local v5, src:Landroid/graphics/Rect;
    :goto_1
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8, v5, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2421
    .end local v5           #src:Landroid/graphics/Rect;
    :pswitch_0
    new-instance v5, Landroid/graphics/Rect;

    mul-int/lit8 v8, v6, 0x5

    div-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v6, 0x5f

    div-int/lit8 v9, v9, 0x64

    invoke-direct {v5, v8, v10, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5       #src:Landroid/graphics/Rect;
    goto :goto_1

    .line 2414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private finishAttachStillImageTask()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 2487
    const/4 v1, 0x0

    .line 2488
    .local v1, times:I
    :goto_0
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I

    if-le v2, v3, :cond_0

    if-ge v1, v4, :cond_0

    .line 2490
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2492
    :catch_0
    move-exception v0

    .line 2493
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2496
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    if-ne v1, v4, :cond_1

    .line 2497
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsAttachTimeOut:Z

    .line 2499
    :cond_1
    const-string v2, "HwCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MorphoPanorama:finishAttachStillImageTask times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;

    .line 2501
    return-void
.end method

.method public static getCamereOrientation()I
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 370
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 372
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 379
    .local v1, orientation:I
    return v1
.end method

.method private getDateString(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 2532
    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInputDir()Ljava/lang/String;
    .locals 5

    .prologue
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0147

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, saveInputDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, save_dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const-string v2, "HwCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdirs failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    return-object v0
.end method

.method private getMsgId([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 1769
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1770
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getThumbnailRotation()I
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2393
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureOritation:I

    add-int/lit8 v0, v0, 0x5a

    .line 2397
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureOritation:I

    goto :goto_0
.end method

.method private hideAllDirectionArrows()V
    .locals 5

    .prologue
    .line 1851
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    if-nez v3, :cond_1

    .line 1869
    :cond_0
    return-void

    .line 1854
    :cond_1
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    if-nez v3, :cond_4

    const v3, 0x7f100128

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1857
    .local v0, direcLinearLayout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 1858
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1861
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1862
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1863
    .local v1, direcView:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1864
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1866
    :cond_3
    const/4 v1, 0x0

    .line 1861
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1854
    .end local v0           #direcLinearLayout:Landroid/widget/LinearLayout;
    .end local v1           #direcView:Landroid/view/View;
    .end local v2           #i:I
    :cond_4
    const v3, 0x7f10012b

    goto :goto_0
.end method

.method private isFakeImage([B)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 1781
    array-length v0, p1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGuideInAttachedCircle(Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .locals 6
    .parameter "attachedPos"
    .parameter "guidePos"
    .parameter "radius"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 1524
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    int-to-double v2, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMorphoPanoramaSupported()Z
    .locals 1

    .prologue
    .line 2981
    invoke-static {}, Lcom/morpho/core/MorphoPanoramaGP;->isMorphoPanoramaSupported()Z

    move-result v0

    return v0
.end method

.method private isProcessingFinishTask()Z
    .locals 2

    .prologue
    .line 2477
    sget-object v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveOutputImageTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveOutputImageTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 2479
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:isProcessingFinishTask return true!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/4 v0, 0x1

    .line 2482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQuickThumbnail([B)Z
    .locals 5
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x35

    .line 1775
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1776
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_3

    aget-byte v2, p1, v0

    if-ne v2, v4, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_3

    invoke-direct {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getMsgId([B)I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isTooFar(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 4
    .parameter "attachedPos"
    .parameter "guidePos"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1380
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1381
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1382
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    if-le v2, v3, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1382
    goto :goto_0

    .line 1383
    :cond_2
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1384
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1386
    :cond_3
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1389
    :cond_4
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1390
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1391
    :cond_5
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1392
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1394
    :cond_6
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private onPanoramaFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2933
    const-string v2, "HwCamera"

    const-string v3, "onPanoramaFinished!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2935
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2

    .line 2937
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setAutoExposureLock(Z)V

    .line 2938
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setAutoWhiteBalanceLock(Z)V

    .line 2940
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2941
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 2942
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-picture"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2943
    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2945
    :cond_0
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2948
    :cond_1
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    .line 2955
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 2956
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 2958
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordButton()V

    .line 2961
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2963
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2966
    iput v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    .line 2967
    iget-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->needReInit:Z

    if-eqz v2, :cond_3

    .line 2968
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/hwcamera/PhotoModule;->reInitMorphoPanorama()V

    .line 2971
    :cond_3
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaHint()V

    .line 2972
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showDirectionArrow()V

    .line 2974
    return-void

    .line 2949
    :catch_0
    move-exception v0

    .line 2950
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HwCamera"

    const-string v3, "onPanoramaFinished, camera device has closed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPanoramaStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2143
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideUIExceptShutter()V

    .line 2145
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideQuickRecordButton()V

    .line 2147
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 2148
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2149
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2150
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hideAllDirectionArrows()V

    .line 2151
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2154
    return-void
.end method

.method private panoramaHintsIsShown()Z
    .locals 4

    .prologue
    .line 720
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 721
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0145

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0144

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    const/4 v1, 0x1

    .line 728
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private rotatePreviewLayout()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 743
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 745
    .local v1, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 746
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 749
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 750
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 751
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 752
    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    .line 807
    :cond_0
    :goto_0
    move-object v0, v1

    .line 808
    .local v0, frp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v3, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;

    invoke-direct {v3, p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 822
    return-void

    .line 754
    .end local v0           #frp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 755
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 756
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 757
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 758
    iput v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto :goto_0

    .line 760
    :cond_2
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 762
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 763
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 764
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 765
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 766
    iput v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto :goto_0

    .line 768
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 769
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 770
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 771
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 772
    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto :goto_0

    .line 775
    :cond_4
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 777
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 779
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 780
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 781
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 782
    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto :goto_0

    .line 784
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 785
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 786
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 787
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 788
    iput v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto/16 :goto_0

    .line 791
    :cond_6
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 792
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 793
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 794
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 795
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 796
    iput v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto/16 :goto_0

    .line 798
    :cond_7
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 799
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 800
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 801
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 802
    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto/16 :goto_0
.end method

.method private rotateProgressLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2326
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    .line 2327
    .local v1, progressBarHeight:I
    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v6, 0x7f1001f0

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 2328
    .local v3, progressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;
    invoke-virtual {v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2330
    .local v4, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v6, 0x7f1001eb

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 2332
    .local v2, progressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;
    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2333
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2334
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2335
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2336
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2337
    invoke-virtual {v3, v7, v7}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    .line 2338
    invoke-virtual {v2, v7, v7}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    .line 2357
    :goto_0
    move-object v0, v4

    .line 2358
    .local v0, frp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v6, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;

    invoke-direct {v6, p0, v3, v0, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;Lcom/android/hwcamera/ui/RotateLinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Lcom/android/hwcamera/ui/RotateLinearLayout;)V

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2366
    return-void

    .line 2340
    .end local v0           #frp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2341
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2342
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2343
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2344
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2345
    invoke-virtual {v3, v10, v7}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    .line 2346
    invoke-virtual {v2, v10, v7}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 2348
    :cond_1
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2349
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2350
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2351
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2352
    invoke-virtual {v3, v9, v7}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    .line 2353
    invoke-virtual {v2, v9, v7}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "path"
    .parameter "rect"

    .prologue
    .line 2504
    const/4 v0, 0x0

    .line 2506
    .local v0, orientation:I
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2508
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureOritation:I

    .line 2516
    :goto_0
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/morpho/core/MorphoPanoramaGP;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v1

    .line 2517
    .local v1, ret:I
    if-eqz v1, :cond_0

    .line 2518
    const-string v2, "HwCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MorphoPanorama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "saveOutputJpeg() -> 0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->addImageAsApplication(Ljava/lang/String;I)V

    .line 2522
    return-void

    .line 2512
    .end local v1           #ret:I
    :cond_1
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureOritation:I

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v0, v2, 0x168

    goto :goto_0
.end method

.method private savePanoramaInputData()V
    .locals 13

    .prologue
    .line 2811
    iget-boolean v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v7, :cond_5

    .line 2812
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 2813
    :try_start_0
    const-string v7, "%s/%s/%s/"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getInputDir()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v12, 0x7f0d0148

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2817
    .local v1, save_dir:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d014a

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2819
    .local v3, sg_save_path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d014b

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2821
    .local v0, sa_save_path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d014c

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2823
    .local v4, so_save_path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d014d

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2825
    .local v5, sr_save_path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d014e

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2827
    .local v6, summary_savepath:Ljava/lang/String;
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v3}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveSensorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2828
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveSensorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2829
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveSensorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2830
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v5}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveSensorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2831
    invoke-direct {p0, v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveSensorInfoSummary(Ljava/lang/String;)V

    .line 2833
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 2834
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2835
    const/4 v7, -0x1

    iput v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeIx:I

    .line 2837
    :cond_0
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 2838
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2839
    const/4 v7, -0x1

    iput v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerIx:I

    .line 2841
    :cond_1
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 2842
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2843
    const/4 v7, -0x1

    iput v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationIx:I

    .line 2845
    :cond_2
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 2846
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2847
    const/4 v7, -0x1

    iput v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorIx:I

    .line 2849
    :cond_3
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorInfoMngList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 2850
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2852
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d014f

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2854
    .local v2, setting_path:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->savePanoramaSetting(Ljava/lang/String;)V

    .line 2855
    monitor-exit v8

    .line 2857
    .end local v0           #sa_save_path:Ljava/lang/String;
    .end local v1           #save_dir:Ljava/lang/String;
    .end local v2           #setting_path:Ljava/lang/String;
    .end local v3           #sg_save_path:Ljava/lang/String;
    .end local v4           #so_save_path:Ljava/lang/String;
    .end local v5           #sr_save_path:Ljava/lang/String;
    .end local v6           #summary_savepath:Ljava/lang/String;
    :cond_5
    return-void

    .line 2855
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private savePanoramaSetting(Ljava/lang/String;)V
    .locals 14
    .parameter "file_path"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    .prologue
    .line 2649
    const/4 v2, 0x0

    .line 2650
    .local v2, filewriter:Ljava/io/FileWriter;
    const/4 v6, 0x0

    .line 2652
    .local v6, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2653
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v3, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2654
    .end local v2           #filewriter:Ljava/io/FileWriter;
    .local v3, filewriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2656
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .local v7, writer:Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroCorrectionValue:[F

    .line 2658
    .local v4, sc_value:[F
    const-string v8, "build_model:%s%n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2659
    .local v5, write_str:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "aovd:%f%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-wide v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2661
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "use_thres:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseThres:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2662
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "motionless_thres:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMotionlessThres:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sensor_correct:%f,%f,%f%n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v4, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v4, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    aget v12, v4, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2666
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "direction:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2668
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preview_shrink_ratio:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2670
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preview_img_width:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2672
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preview_img_height:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2674
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dst_img_width:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2676
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dst_img_height:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "output_rotation:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2680
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preview_width:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2682
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "preview_height:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2684
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "still_width:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "still_height:%d%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2688
    invoke-virtual {v7, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 2690
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    move-object v2, v3

    .line 2700
    .end local v1           #file:Ljava/io/File;
    .end local v3           #filewriter:Ljava/io/FileWriter;
    .end local v4           #sc_value:[F
    .end local v5           #write_str:Ljava/lang/String;
    .restart local v2       #filewriter:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 2691
    :catch_0
    move-exception v0

    .line 2693
    .local v0, e:Ljava/io/IOException;
    :goto_1
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 2694
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2698
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2695
    :catch_1
    move-exception v8

    goto :goto_2

    .line 2691
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #filewriter:Ljava/io/FileWriter;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #filewriter:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #filewriter:Ljava/io/FileWriter;
    .restart local v2       #filewriter:Ljava/io/FileWriter;
    goto :goto_1

    .end local v2           #filewriter:Ljava/io/FileWriter;
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #filewriter:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3           #filewriter:Ljava/io/FileWriter;
    .restart local v2       #filewriter:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private savePreviewImage([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 1593
    iget-boolean v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v1, :cond_0

    .line 1594
    const-string v1, "%s/%s/%s/p_%05d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getInputDir()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v6, 0x7f0d0148

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, path:Ljava/lang/String;
    const-string v2, "YVU420_SEMIPLANAR"

    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    iget v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/morpho/core/MorphoPanoramaGP;->saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I

    .line 1602
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveSensorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter "file_path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/SensorInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    .prologue
    .line 2705
    .local p1, sensor_info_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/morpho/app/panorama_gp/SensorInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 2734
    :cond_0
    :goto_0
    return-void

    .line 2709
    :cond_1
    const/4 v2, 0x0

    .line 2710
    .local v2, filewriter:Ljava/io/FileWriter;
    const/4 v8, 0x0

    .line 2712
    .local v8, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2713
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v3, v1, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2714
    .end local v2           #filewriter:Ljava/io/FileWriter;
    .local v3, filewriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v9, Ljava/io/BufferedWriter;

    invoke-direct {v9, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2716
    .end local v8           #writer:Ljava/io/BufferedWriter;
    .local v9, writer:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 2717
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/morpho/app/panorama_gp/SensorInfo;

    .line 2718
    .local v6, sinfo_0:Lcom/morpho/app/panorama_gp/SensorInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/morpho/app/panorama_gp/SensorInfo;

    .line 2719
    .local v5, sinfo:Lcom/morpho/app/panorama_gp/SensorInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v6, Lcom/morpho/app/panorama_gp/SensorInfo;->timestamp:J

    invoke-direct {p0, v5, v11, v12}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->toStringSensorInfo(Lcom/morpho/app/panorama_gp/SensorInfo;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2721
    .local v7, write_str:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2716
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2723
    .end local v5           #sinfo:Lcom/morpho/app/panorama_gp/SensorInfo;
    .end local v6           #sinfo_0:Lcom/morpho/app/panorama_gp/SensorInfo;
    .end local v7           #write_str:Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 2724
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v8, v9

    .end local v9           #writer:Ljava/io/BufferedWriter;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    move-object v2, v3

    .line 2732
    .end local v3           #filewriter:Ljava/io/FileWriter;
    .restart local v2       #filewriter:Ljava/io/FileWriter;
    goto :goto_0

    .line 2725
    .end local v1           #file:Ljava/io/File;
    .end local v4           #i:I
    :catch_0
    move-exception v0

    .line 2727
    .local v0, e:Ljava/io/IOException;
    :goto_2
    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 2728
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2731
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2729
    :catch_1
    move-exception v10

    goto :goto_3

    .line 2725
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #filewriter:Ljava/io/FileWriter;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #filewriter:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #filewriter:Ljava/io/FileWriter;
    .restart local v2       #filewriter:Ljava/io/FileWriter;
    goto :goto_2

    .end local v2           #filewriter:Ljava/io/FileWriter;
    .end local v8           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #filewriter:Ljava/io/FileWriter;
    .restart local v4       #i:I
    .restart local v9       #writer:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    move-object v8, v9

    .end local v9           #writer:Ljava/io/BufferedWriter;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3           #filewriter:Ljava/io/FileWriter;
    .restart local v2       #filewriter:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private saveSensorInfoSummary(Ljava/lang/String;)V
    .locals 22
    .parameter "file_path"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    .prologue
    .line 2755
    const/4 v6, 0x0

    .line 2756
    .local v6, filewriter:Ljava/io/FileWriter;
    const/4 v15, 0x0

    .line 2758
    .local v15, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2759
    .local v5, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileWriter;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v7, v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    .end local v6           #filewriter:Ljava/io/FileWriter;
    .local v7, filewriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v16, Ljava/io/BufferedWriter;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2764
    .end local v15           #writer:Ljava/io/BufferedWriter;
    .local v16, writer:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorInfoMngList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorInfoMngList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;

    .line 2766
    .local v12, sensor_info_mng:Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;
    iget v13, v12, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->stop_thres:I

    .line 2767
    .local v13, stop_thres:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v12, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->g_ix:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->toStringSensorInfoSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v8

    .line 2769
    .local v8, g_str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v12, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->a_ix:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->toStringSensorInfoSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    .line 2771
    .local v3, a_str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v12, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->o_ix:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->toStringSensorInfoSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v10

    .line 2773
    .local v10, o_str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v12, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->r_ix:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->toStringSensorInfoSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v11

    .line 2775
    .local v11, r_str:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%6d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2778
    .local v14, write_str:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2764
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 2780
    .end local v3           #a_str:Ljava/lang/String;
    .end local v8           #g_str:Ljava/lang/String;
    .end local v10           #o_str:Ljava/lang/String;
    .end local v11           #r_str:Ljava/lang/String;
    .end local v12           #sensor_info_mng:Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;
    .end local v13           #stop_thres:I
    .end local v14           #write_str:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V

    .line 2781
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v15, v16

    .end local v16           #writer:Ljava/io/BufferedWriter;
    .restart local v15       #writer:Ljava/io/BufferedWriter;
    move-object v6, v7

    .line 2791
    .end local v5           #file:Ljava/io/File;
    .end local v7           #filewriter:Ljava/io/FileWriter;
    .end local v9           #i:I
    .restart local v6       #filewriter:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 2782
    :catch_0
    move-exception v4

    .line 2784
    .local v4, e:Ljava/io/IOException;
    :goto_2
    if-eqz v15, :cond_1

    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V

    .line 2785
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2789
    :cond_2
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2786
    :catch_1
    move-exception v17

    goto :goto_3

    .line 2782
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #filewriter:Ljava/io/FileWriter;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #filewriter:Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7           #filewriter:Ljava/io/FileWriter;
    .restart local v6       #filewriter:Ljava/io/FileWriter;
    goto :goto_2

    .end local v6           #filewriter:Ljava/io/FileWriter;
    .end local v15           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #filewriter:Ljava/io/FileWriter;
    .restart local v9       #i:I
    .restart local v16       #writer:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v4

    move-object/from16 v15, v16

    .end local v16           #writer:Ljava/io/BufferedWriter;
    .restart local v15       #writer:Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7           #filewriter:Ljava/io/FileWriter;
    .restart local v6       #filewriter:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private setSensorAngleMatrix()V
    .locals 9

    .prologue
    .line 1534
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1535
    :try_start_0
    iget-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v2, :cond_0

    .line 1536
    new-instance v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;

    invoke-direct {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;-><init>()V

    .line 1538
    .local v1, sinfo_mng:Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeIx:I

    iput v2, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->g_ix:I

    .line 1539
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerIx:I

    iput v2, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->a_ix:I

    .line 1540
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationIx:I

    iput v2, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->o_ix:I

    .line 1541
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorIx:I

    iput v2, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->r_ix:I

    .line 1542
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    iput v2, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->img_ix:I

    .line 1543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->time:J

    .line 1544
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    .end local v1           #sinfo_mng:Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;
    :cond_0
    iget-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseSensorAWF:Z

    if-eqz v2, :cond_3

    .line 1547
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v2, :cond_2

    .line 1548
    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    if-nez v2, :cond_1

    .line 1549
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v2}, Lcom/morpho/utils/Matrix3x3;->setIdentity()V

    .line 1551
    :cond_1
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v4}, Lcom/morpho/utils/Matrix3x3;->toDoubleArray()[D

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/morpho/core/MorphoPanoramaGP;->setAngleMatrix([DI)I

    move-result v0

    .line 1554
    .local v0, ret:I
    if-eqz v0, :cond_2

    .line 1555
    const-string v2, "HwCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MorphoPanorama:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "setAngleMatrix() -> 0x%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    .end local v0           #ret:I
    :cond_2
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v2, :cond_4

    .line 1564
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRVSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v4}, Lcom/morpho/utils/Matrix3x3;->toDoubleArray()[D

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/morpho/core/MorphoPanoramaGP;->setAngleMatrix([DI)I

    move-result v0

    .line 1567
    .restart local v0       #ret:I
    if-eqz v0, :cond_3

    .line 1568
    const-string v2, "HwCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MorphoPanorama:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "setAngleMatrix() -> 0x%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    .end local v0           #ret:I
    :cond_3
    :goto_0
    monitor-exit v3

    .line 1590
    return-void

    .line 1575
    :cond_4
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticField:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    .line 1576
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMASensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v4}, Lcom/morpho/utils/Matrix3x3;->toDoubleArray()[D

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/morpho/core/MorphoPanoramaGP;->setAngleMatrix([DI)I

    move-result v0

    .line 1579
    .restart local v0       #ret:I
    if-eqz v0, :cond_3

    .line 1580
    const-string v2, "HwCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MorphoPanorama:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "setAngleMatrix() -> 0x%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    .end local v0           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private showBorderWarning(IILandroid/graphics/Point;Landroid/graphics/Point;I)Z
    .locals 1
    .parameter "dw"
    .parameter "dh"
    .parameter "attachedPos"
    .parameter "guidePos"
    .parameter "radius"

    .prologue
    .line 1403
    iget v0, p3, Landroid/graphics/Point;->y:I

    if-lt v0, p5, :cond_0

    iget v0, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p5

    if-gt v0, p2, :cond_0

    iget v0, p3, Landroid/graphics/Point;->x:I

    if-lt v0, p5, :cond_0

    iget v0, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p5

    if-gt v0, p1, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isTooFar(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4, p5}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isGuideInAttachedCircle(Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDirectionArrow()V
    .locals 6

    .prologue
    const v5, 0x7f10012c

    const v4, 0x7f10012a

    const v3, 0x7f10012b

    const v1, 0x7f100128

    const/4 v2, 0x0

    .line 1809
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hideAllDirectionArrows()V

    .line 1810
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1811
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1812
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    :goto_0
    return-void

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1820
    :cond_1
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1821
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1822
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1824
    :cond_2
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1825
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100129

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1829
    :cond_3
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1830
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1831
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f10012d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1834
    :cond_4
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1835
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1838
    :cond_5
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1839
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1842
    :cond_6
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1843
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showLastPhoto()V
    .locals 9

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2387
    :goto_0
    return-void

    .line 2373
    :cond_0
    const/4 v7, 0x0

    .line 2375
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastPhotoUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2377
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2379
    .local v8, idIndex:I
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2380
    .local v6, bm:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastPhotoUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getThumbnailRotation()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/hwcamera/CameraActivity;->updatePictureThumbnail(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 2382
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastPhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2385
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v8           #idIndex:I
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private showStartAnimation()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const v7, 0x7f10012c

    const v6, 0x7f10012a

    const/4 v1, 0x1

    .line 1088
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->clearAnimation()V

    .line 1089
    const/4 v10, 0x0

    .line 1090
    .local v10, arrow:Landroid/widget/ImageView;
    const/4 v4, 0x0

    .line 1091
    .local v4, deltaX:F
    const/4 v8, 0x0

    .line 1092
    .local v8, deltaY:F
    const/high16 v11, 0x4000

    .line 1094
    .local v11, delta:F
    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    if-nez v3, :cond_1

    const v3, 0x7f100128

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    array-length v3, v3

    if-ge v12, v3, :cond_2

    .line 1100
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    aget v5, v5, v12

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    aget v5, v5, v12

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 1099
    .restart local v10       #arrow:Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1094
    .end local v12           #i:I
    :cond_1
    const v3, 0x7f10012b

    goto :goto_0

    .line 1105
    .restart local v12       #i:I
    :cond_2
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1106
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1107
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1108
    const/high16 v4, 0x4000

    .line 1109
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 1143
    .restart local v10       #arrow:Landroid/widget/ImageView;
    :goto_2
    iput-object v10, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAnimationView:Landroid/widget/ImageView;

    .line 1144
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1145
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1148
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1149
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1150
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1151
    new-instance v1, Lcom/morpho/app/panorama_gp/MorphoPanorama$3;

    invoke-direct {v1, p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$3;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1168
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1169
    return-void

    .line 1111
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_3
    const/high16 v8, -0x4000

    .line 1112
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto :goto_2

    .line 1115
    :cond_4
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1116
    const/high16 v8, 0x4000

    .line 1117
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v5, 0x7f10012d

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto :goto_2

    .line 1119
    :cond_5
    const/high16 v4, 0x4000

    .line 1120
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto :goto_2

    .line 1124
    :cond_6
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1125
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1126
    const/high16 v8, -0x4000

    .line 1127
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto :goto_2

    .line 1129
    :cond_7
    const/high16 v4, -0x4000

    .line 1130
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v5, 0x7f100129

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto :goto_2

    .line 1133
    :cond_8
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1134
    const/high16 v4, 0x4000

    .line 1135
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto/16 :goto_2

    .line 1137
    :cond_9
    const/high16 v8, -0x4000

    .line 1138
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #arrow:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #arrow:Landroid/widget/ImageView;
    goto/16 :goto_2
.end method

.method private showWarningHint(Landroid/graphics/Point;Landroid/graphics/Point;III)V
    .locals 3
    .parameter "attachedPos"
    .parameter "guidePos"
    .parameter "radius"
    .parameter "dh"
    .parameter "dw"

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isAdverseDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    const/4 v0, 0x0

    .line 1417
    .local v0, warningStringId:I
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1418
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1419
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_2

    .line 1420
    const v0, 0x7f0d0151

    .line 1520
    :goto_1
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    goto :goto_0

    .line 1421
    :cond_2
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_3

    .line 1422
    const v0, 0x7f0d0152

    goto :goto_1

    .line 1423
    :cond_3
    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_4

    .line 1424
    const v0, 0x7f0d0153

    goto :goto_1

    .line 1425
    :cond_4
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_0

    .line 1426
    const v0, 0x7f0d0154

    goto :goto_1

    .line 1431
    :cond_5
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1432
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_6

    .line 1433
    const v0, 0x7f0d0151

    goto :goto_1

    .line 1434
    :cond_6
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_7

    .line 1435
    const v0, 0x7f0d0152

    goto :goto_1

    .line 1436
    :cond_7
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_8

    .line 1437
    const v0, 0x7f0d0153

    goto :goto_1

    .line 1438
    :cond_8
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    if-le v1, p5, :cond_0

    .line 1439
    const v0, 0x7f0d0154

    goto :goto_1

    .line 1444
    :cond_9
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_a

    .line 1445
    const v0, 0x7f0d0151

    goto :goto_1

    .line 1446
    :cond_a
    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_b

    .line 1447
    const v0, 0x7f0d0152

    goto :goto_1

    .line 1448
    :cond_b
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    if-le v1, p5, :cond_c

    .line 1449
    const v0, 0x7f0d0153

    goto :goto_1

    .line 1450
    :cond_c
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_0

    .line 1451
    const v0, 0x7f0d0154

    goto :goto_1

    .line 1458
    :cond_d
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1459
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1460
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_e

    .line 1461
    const v0, 0x7f0d0152

    goto/16 :goto_1

    .line 1462
    :cond_e
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    if-le v1, p5, :cond_f

    .line 1463
    const v0, 0x7f0d0151

    goto/16 :goto_1

    .line 1464
    :cond_f
    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_10

    .line 1465
    const v0, 0x7f0d0153

    goto/16 :goto_1

    .line 1466
    :cond_10
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_11

    .line 1467
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1468
    :cond_11
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    .line 1469
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1474
    :cond_12
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_13

    .line 1475
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1476
    :cond_13
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    if-le v1, p5, :cond_14

    .line 1477
    const v0, 0x7f0d0153

    goto/16 :goto_1

    .line 1478
    :cond_14
    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_15

    .line 1479
    const v0, 0x7f0d0152

    goto/16 :goto_1

    .line 1480
    :cond_15
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_16

    .line 1481
    const v0, 0x7f0d0151

    goto/16 :goto_1

    .line 1482
    :cond_16
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ge v1, v2, :cond_0

    .line 1483
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1489
    :cond_17
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1490
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_18

    .line 1491
    const v0, 0x7f0d0153

    goto/16 :goto_1

    .line 1492
    :cond_18
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    if-le v1, p5, :cond_19

    .line 1493
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1494
    :cond_19
    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_1a

    .line 1495
    const v0, 0x7f0d0151

    goto/16 :goto_1

    .line 1496
    :cond_1a
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_1b

    .line 1497
    const v0, 0x7f0d0152

    goto/16 :goto_1

    .line 1498
    :cond_1b
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 1499
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1504
    :cond_1c
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v1, p3, :cond_1d

    .line 1505
    const v0, 0x7f0d0152

    goto/16 :goto_1

    .line 1506
    :cond_1d
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    if-le v1, p5, :cond_1e

    .line 1507
    const v0, 0x7f0d0151

    goto/16 :goto_1

    .line 1508
    :cond_1e
    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_1f

    .line 1509
    const v0, 0x7f0d0153

    goto/16 :goto_1

    .line 1510
    :cond_1f
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_20

    .line 1511
    const v0, 0x7f0d0154

    goto/16 :goto_1

    .line 1512
    :cond_20
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    .line 1513
    const v0, 0x7f0d0154

    goto/16 :goto_1
.end method

.method private startPanoramaShooting()V
    .locals 25

    .prologue
    .line 1872
    const-string v19, "HwCamera"

    const-string v20, "MorphoPanorama:startPanoramaShooting!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isProcessingFinishTask()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    const-string v19, "HwCamera"

    const-string v20, "MorphoPanorama:Start morpho panorama shooting!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onPanoramaStart()V

    .line 1882
    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v6, v0

    .line 1883
    .local v6, disp_w:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mThumbnailRatio:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v5, v0

    .line 1889
    .local v5, disp_h:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    .line 1890
    .local v7, panoramaBarHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1892
    int-to-float v0, v6

    move/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    div-float v10, v19, v20

    .line 1893
    .local v10, ratio:F
    move v11, v6

    .line 1907
    .local v11, real_disp_w:I
    :goto_1
    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    mul-float v20, v20, v10

    div-float v14, v19, v20

    .line 1911
    .local v14, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 1912
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v4, v0, [I

    .line 1913
    .local v4, buff_size:[I
    new-instance v19, Lcom/morpho/core/MorphoPanoramaGP;

    invoke-direct/range {v19 .. v19}, Lcom/morpho/core/MorphoPanoramaGP;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    .line 1914
    new-instance v19, Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-direct/range {v19 .. v19}, Lcom/morpho/core/MorphoPanoramaGP$InitParam;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const-string v20, "YVU420_SEMIPLANAR"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPictureW:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPictureH:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x404e

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v19

    invoke-static {}, Lcom/android/hwcamera/Util;->getBackCameraId()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v18

    .line 1927
    .local v18, tmpDegrees:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppDeviceRotation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    move/from16 v20, v0

    add-int v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1985
    packed-switch v18, :pswitch_data_1

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1993
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v19, v0

    div-int v19, v19, v11

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1998
    .local v15, shrink_ratio:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v15, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const-wide v20, 0x4076800000000000L

    invoke-static/range {v19 .. v21}, Lcom/morpho/core/MorphoPanoramaGP;->calcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I

    .line 2001
    const/16 v19, 0x61a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 2002
    const v19, 0x46c35000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 2004
    .local v13, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x61a8

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 2007
    .end local v13           #scale:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/morpho/core/MorphoPanoramaGP;->initialize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v12

    .line 2010
    .local v12, ret:I
    if-eqz v12, :cond_3

    .line 2011
    const-string v19, "HwCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MorphoPanorama:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "initialize() -> 0x%x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    .end local v4           #buff_size:[I
    .end local v12           #ret:I
    .end local v15           #shrink_ratio:I
    .end local v18           #tmpDegrees:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMotionlessThres:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/morpho/core/MorphoPanoramaGP;->setMotionlessThreshold(I)I

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseThres:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/morpho/core/MorphoPanoramaGP;->setUseThreshold(I)I

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseSensorThres:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/morpho/core/MorphoPanoramaGP;->setUseSensorThreshold(I)I

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 2020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppDeviceRotation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    move/from16 v20, v0

    add-int v19, v19, v20

    packed-switch v19, :pswitch_data_2

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v3, v19, v20

    .line 2060
    .local v3, aspect:F
    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v3

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x5a

    div-int/lit8 v19, v19, 0x64

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 2067
    .end local v3           #aspect:F
    :cond_4
    :goto_4
    const-string v19, "HwCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[Length] mDispPreviewImage width = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", height = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDateLong:J

    .line 2070
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDateLong:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getDateString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;

    .line 2071
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2072
    const-string v19, "%s/%s/%s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getInputDir()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d0148

    invoke-virtual/range {v22 .. v23}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2074
    .local v9, pr_save_path:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v8, pr_file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_5

    .line 2077
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v19

    if-nez v19, :cond_5

    .line 2078
    const-string v19, "HwCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mkdirs failure: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_5
    const-string v19, "%s/%s/%s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getInputDir()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d0149

    invoke-virtual/range {v22 .. v23}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 2084
    .local v17, st_save_path:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v16, st_file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2087
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2088
    const-string v19, "HwCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mkdirs failure: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    .end local v8           #pr_file:Ljava/io/File;
    .end local v9           #pr_save_path:Ljava/lang/String;
    .end local v16           #st_file:Ljava/io/File;
    .end local v17           #st_save_path:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseSensorAWF:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/morpho/core/MorphoPanoramaGP;->setUseSensorAssist(II)I

    move-result v12

    .line 2096
    .restart local v12       #ret:I
    if-eqz v12, :cond_7

    .line 2097
    const-string v19, "HwCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MorphoPanorama:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "setUseSensorAssist() -> 0x%x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/morpho/core/MorphoPanoramaGP;->start()I

    move-result v12

    .line 2109
    if-eqz v12, :cond_8

    .line 2110
    const-string v19, "HwCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MorphoPanorama:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "start() -> 0x%x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewBuff:[B

    .line 2114
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setPanoramaParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirection:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    move/from16 v21, v0

    aput v21, v19, v20

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPrevDirection:I

    .line 2119
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    .line 2120
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    .line 2121
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I

    .line 2122
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    .line 2123
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureOritation:I

    .line 2127
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    .line 2128
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsAttachTimeOut:Z

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v19, v0

    const v20, 0x7f10012e

    invoke-virtual/range {v19 .. v20}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2131
    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hideAllDirectionArrows()V

    .line 2133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCType:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 2134
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x2710

    invoke-virtual/range {v19 .. v21}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->start(J)V

    goto/16 :goto_0

    .line 1895
    .end local v10           #ratio:F
    .end local v11           #real_disp_w:I
    .end local v12           #ret:I
    .end local v14           #scaleRatio:F
    :cond_9
    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    div-float v10, v19, v20

    .line 1896
    .restart local v10       #ratio:F
    move v11, v5

    .restart local v11       #real_disp_w:I
    goto/16 :goto_1

    .line 1899
    .end local v10           #ratio:F
    .end local v11           #real_disp_w:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1900
    move v11, v5

    .line 1901
    .restart local v11       #real_disp_w:I
    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    div-float v10, v19, v20

    .restart local v10       #ratio:F
    goto/16 :goto_1

    .line 1903
    .end local v10           #ratio:F
    .end local v11           #real_disp_w:I
    :cond_b
    move v11, v6

    .line 1904
    .restart local v11       #real_disp_w:I
    int-to-float v0, v6

    move/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    div-float v10, v19, v20

    .restart local v10       #ratio:F
    goto/16 :goto_1

    .line 1929
    .restart local v4       #buff_size:[I
    .restart local v14       #scaleRatio:F
    .restart local v18       #tmpDegrees:I
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 1935
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x5a

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v19, v0

    div-int v19, v19, v11

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1946
    .restart local v15       #shrink_ratio:I
    goto/16 :goto_3

    .line 1932
    .end local v15           #shrink_ratio:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    goto/16 :goto_6

    .line 1948
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v19

    if-nez v19, :cond_d

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 1953
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1957
    packed-switch v18, :pswitch_data_3

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1965
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    div-int v19, v19, v11

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1967
    .restart local v15       #shrink_ratio:I
    goto/16 :goto_3

    .line 1951
    .end local v15           #shrink_ratio:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    goto/16 :goto_7

    .line 1959
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto :goto_8

    .line 1969
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0x5a

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    div-int v19, v19, v11

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1977
    .restart local v15       #shrink_ratio:I
    goto/16 :goto_3

    .line 1987
    .end local v15           #shrink_ratio:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto/16 :goto_2

    .line 2022
    .end local v4           #buff_size:[I
    .end local v18           #tmpDegrees:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v3, v19, v20

    .line 2027
    .restart local v3       #aspect:F
    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v3

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x5a

    div-int/lit8 v19, v19, 0x64

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 2032
    .end local v3           #aspect:F
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v3, v19, v20

    .line 2037
    .restart local v3       #aspect:F
    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v3

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x5a

    div-int/lit8 v19, v19, 0x64

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 2043
    .end local v3           #aspect:F
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mInitParam:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v3, v19, v20

    .line 2048
    .restart local v3       #aspect:F
    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v3

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x5a

    div-int/lit8 v19, v19, 0x64

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 2093
    .end local v3           #aspect:F
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 2138
    .restart local v12       #ret:I
    :cond_f
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1985
    :pswitch_data_1
    .packed-switch 0xb4
        :pswitch_4
    .end packed-switch

    .line 2020
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1957
    :pswitch_data_3
    .packed-switch 0xb4
        :pswitch_2
    .end packed-switch
.end method

.method private toStringSensorInfo(Lcom/morpho/app/panorama_gp/SensorInfo;J)Ljava/lang/String;
    .locals 12
    .parameter "info"
    .parameter "base_time"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2740
    const-string v6, "%1$05d"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p1, Lcom/morpho/app/panorama_gp/SensorInfo;->index:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2741
    .local v0, ix:Ljava/lang/String;
    const-string v6, "%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-wide v8, p1, Lcom/morpho/app/panorama_gp/SensorInfo;->timestamp:J

    sub-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2742
    .local v2, tm:Ljava/lang/String;
    const-string v6, "%f"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/morpho/app/panorama_gp/SensorInfo;->values:[F

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2743
    .local v3, v0:Ljava/lang/String;
    const-string v6, "%f"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/morpho/app/panorama_gp/SensorInfo;->values:[F

    aget v8, v8, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2744
    .local v4, v1:Ljava/lang/String;
    const-string v6, "%f"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/morpho/app/panorama_gp/SensorInfo;->values:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2746
    .local v5, v2:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2749
    .local v1, str:Ljava/lang/String;
    return-object v1
.end method

.method private toStringSensorInfoSummary(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "ix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/morpho/app/panorama_gp/SensorInfo;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2796
    .local p1, s_info_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/morpho/app/panorama_gp/SensorInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 2797
    const-string v3, "Unsupported\t-\t-\t-\t-"

    .line 2807
    .local v3, str:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2799
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    if-gez p2, :cond_1

    .line 2800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0

    .line 2803
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/morpho/app/panorama_gp/SensorInfo;

    iget-wide v0, v4, Lcom/morpho/app/panorama_gp/SensorInfo;->timestamp:J

    .line 2804
    .local v0, base_time:J
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/morpho/app/panorama_gp/SensorInfo;

    .line 2805
    .local v2, info:Lcom/morpho/app/panorama_gp/SensorInfo;
    invoke-direct {p0, v2, v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->toStringSensorInfo(Lcom/morpho/app/panorama_gp/SensorInfo;J)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method private updatePanoramaPreview()V
    .locals 3

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->directionFixed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updateThumbnailBar()V

    .line 1082
    :goto_0
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1083
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    const/16 v2, 0xf0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1084
    return-void

    .line 1072
    :cond_0
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updateThumbnailBarInVertical()V

    goto :goto_0

    .line 1077
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1078
    .local v0, canvas:Landroid/graphics/Canvas;
    sget v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;->BACKGROUNDC_COLOR:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1080
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showStartAnimation()V

    goto :goto_0
.end method

.method private updatePreviewSize()V
    .locals 2

    .prologue
    .line 880
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 884
    .local v0, param:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewW:I

    .line 889
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewH:I

    .line 890
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPictureW:I

    .line 891
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPictureH:I

    goto :goto_0
.end method

.method private updateStatusAfterFirstPictureTaken()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->resetTouchFocus()V

    .line 1036
    return-void
.end method

.method private updateThumbnailBar()V
    .locals 18

    .prologue
    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->drawPanoramaPreviewImage()Landroid/graphics/Canvas;

    move-result-object v13

    .line 1183
    .local v13, canvas:Landroid/graphics/Canvas;
    if-nez v13, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1186
    .local v17, sw:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 1187
    .local v16, sh:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1188
    .local v2, dw:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1190
    .local v3, dh:I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1191
    .local v4, attachedPos:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1192
    .local v5, guidePos:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, v4, v5}, Lcom/morpho/core/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 1194
    int-to-float v1, v3

    move/from16 v0, v16

    int-to-float v7, v0

    div-float v15, v1, v7

    .line 1195
    .local v15, ratioY:F
    int-to-float v1, v2

    move/from16 v0, v17

    int-to-float v7, v0

    div-float v14, v1, v7

    .line 1196
    .local v14, ratioX:F
    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 1197
    iget v1, v4, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->y:I

    .line 1198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 1200
    div-int/lit8 v1, v3, 0x2

    iput v1, v5, Landroid/graphics/Point;->y:I

    .line 1207
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    if-lez v1, :cond_5

    .line 1208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v1, v7, :cond_5

    .line 1210
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1202
    :cond_2
    div-int/lit8 v1, v2, 0x2

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 1203
    iget v1, v5, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1214
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1215
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    if-le v1, v7, :cond_5

    .line 1216
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1220
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    if-ge v1, v7, :cond_5

    .line 1221
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1228
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1229
    iget v1, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    .line 1234
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureWarning:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    .line 1237
    .local v6, radius:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    const/4 v7, 0x0

    aget v1, v1, v7

    if-gez v1, :cond_c

    move-object/from16 v1, p0

    .line 1240
    invoke-direct/range {v1 .. v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showBorderWarning(IILandroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1241
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v5

    move v10, v6

    move v11, v3

    move v12, v2

    .line 1242
    invoke-direct/range {v7 .. v12}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showWarningHint(Landroid/graphics/Point;Landroid/graphics/Point;III)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureWarning:Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v6

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1245
    iget v1, v4, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_6

    iget v1, v4, Landroid/graphics/Point;->y:I

    if-ge v1, v3, :cond_6

    iget v1, v4, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_6

    iget v1, v4, Landroid/graphics/Point;->x:I

    if-lt v1, v2, :cond_8

    .line 1247
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1231
    .end local v6           #radius:I
    :cond_7
    iget v1, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    goto :goto_2

    .line 1250
    .restart local v6       #radius:I
    :cond_8
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    .line 1259
    :cond_9
    :goto_3
    iget v1, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v6

    if-ge v1, v2, :cond_b

    .line 1260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    iget v7, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1273
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    if-gtz v1, :cond_0

    .line 1274
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    goto/16 :goto_0

    .line 1252
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1255
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isGuideInAttachedCircle(Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1256
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    goto :goto_3

    .line 1262
    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1268
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private updateThumbnailBarInVertical()V
    .locals 19

    .prologue
    .line 1279
    invoke-direct/range {p0 .. p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->drawPanoramaPreviewImage()Landroid/graphics/Canvas;

    move-result-object v13

    .line 1280
    .local v13, canvas:Landroid/graphics/Canvas;
    if-nez v13, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 1282
    .local v18, sw:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 1283
    .local v17, sh:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1284
    .local v2, dw:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1286
    .local v3, dh:I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1287
    .local v4, attachedPos:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1288
    .local v5, guidePos:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, v4, v5}, Lcom/morpho/core/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 1290
    int-to-float v1, v3

    move/from16 v0, v17

    int-to-float v7, v0

    div-float v16, v1, v7

    .line 1291
    .local v16, ratioY:F
    int-to-float v1, v2

    move/from16 v0, v18

    int-to-float v7, v0

    div-float v15, v1, v7

    .line 1292
    .local v15, ratioX:F
    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 1293
    iget v1, v4, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->y:I

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1297
    iget v1, v5, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Point;->y:I

    .line 1298
    div-int/lit8 v1, v2, 0x2

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 1304
    :goto_1
    const/4 v14, 0x0

    .line 1306
    .local v14, isOverride:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    if-lez v1, :cond_2

    .line 1307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    if-ge v1, v7, :cond_4

    .line 1309
    const/4 v14, 0x1

    .line 1322
    :cond_2
    :goto_2
    if-eqz v14, :cond_7

    .line 1323
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1300
    .end local v14           #isOverride:Z
    :cond_3
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Point;->x:I

    .line 1301
    div-int/lit8 v1, v3, 0x2

    iput v1, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1310
    .restart local v14       #isOverride:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-ge v1, v7, :cond_2

    .line 1311
    const/4 v14, 0x1

    goto :goto_2

    .line 1314
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v1, v7, :cond_6

    .line 1315
    const/4 v14, 0x1

    goto :goto_2

    .line 1316
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    if-ge v1, v7, :cond_2

    .line 1317
    const/4 v14, 0x1

    goto :goto_2

    .line 1327
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isTheSameOrientationAsLocked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1328
    iget v1, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    .line 1333
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureWarning:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    .line 1336
    .local v6, radius:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    const/4 v7, 0x0

    aget v1, v1, v7

    if-gez v1, :cond_e

    move-object/from16 v1, p0

    .line 1339
    invoke-direct/range {v1 .. v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showBorderWarning(IILandroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1340
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v5

    move v10, v6

    move v11, v3

    move v12, v2

    .line 1341
    invoke-direct/range {v7 .. v12}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showWarningHint(Landroid/graphics/Point;Landroid/graphics/Point;III)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureWarning:Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v6

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1344
    iget v1, v4, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_8

    iget v1, v4, Landroid/graphics/Point;->y:I

    if-ge v1, v3, :cond_8

    iget v1, v4, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_8

    iget v1, v4, Landroid/graphics/Point;->x:I

    if-lt v1, v2, :cond_a

    .line 1346
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1330
    .end local v6           #radius:I
    :cond_9
    iget v1, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mLastGuidePos:I

    goto :goto_3

    .line 1349
    .restart local v6       #radius:I
    :cond_a
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    .line 1358
    :cond_b
    :goto_4
    iget v1, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v6

    if-ge v1, v2, :cond_d

    .line 1359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    iget v7, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1372
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    if-gtz v1, :cond_0

    .line 1373
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    goto/16 :goto_0

    .line 1351
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 1352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1354
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isGuideInAttachedCircle(Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1355
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    goto :goto_4

    .line 1361
    :cond_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    goto/16 :goto_0

    .line 1367
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5
.end method


# virtual methods
.method public changeShotDirection(Z)V
    .locals 0
    .parameter "isHorizonal"

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setShotHorizontal(Z)V

    .line 738
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->calculatePanoramaPreviewSize()V

    .line 739
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotatePreviewLayout()V

    .line 740
    return-void
.end method

.method public drawPanoramaPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 12
    .parameter "screenNail"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 504
    if-nez p6, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 514
    .local v8, panoramaPreview:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 515
    .local v9, panoramaPreviewLayout:Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001d8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .local v10, previewLayout:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 530
    .local v7, location:[I
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 532
    const/4 v2, 0x1

    .line 533
    .local v2, thumbnailX:I
    const/4 v3, 0x1

    .line 534
    .local v3, thumbnailY:I
    const/4 v4, 0x1

    .line 535
    .local v4, thumbnailWidth:I
    const/4 v5, 0x1

    .line 536
    .local v5, thumbnailHeight:I
    const/4 v11, 0x1

    .line 539
    .local v11, previewY:I
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 540
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int v0, v0, p6

    div-int/lit8 v11, v0, 0x2

    .line 542
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 544
    mul-int v0, v5, p5

    div-int v4, v0, p6

    .line 545
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v2, p3, v0

    .line 546
    const/4 v0, 0x1

    aget v0, v7, v0

    sub-int/2addr v0, v11

    add-int v0, v0, p4

    add-int/lit8 v3, v0, 0x2

    .line 548
    add-int/lit8 v5, v5, -0x2

    :goto_1
    move-object v0, p1

    move-object v1, p2

    .line 603
    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/CameraScreenNail;->drawThumbnail(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    .line 516
    .end local v2           #thumbnailX:I
    .end local v3           #thumbnailY:I
    .end local v4           #thumbnailWidth:I
    .end local v5           #thumbnailHeight:I
    .end local v7           #location:[I
    .end local v8           #panoramaPreview:Landroid/widget/ImageView;
    .end local v9           #panoramaPreviewLayout:Landroid/widget/RelativeLayout;
    .end local v10           #previewLayout:Landroid/widget/RelativeLayout;
    .end local v11           #previewY:I
    :catch_0
    move-exception v6

    .line 517
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "HwCamera"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 551
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #thumbnailX:I
    .restart local v3       #thumbnailY:I
    .restart local v4       #thumbnailWidth:I
    .restart local v5       #thumbnailHeight:I
    .restart local v7       #location:[I
    .restart local v8       #panoramaPreview:Landroid/widget/ImageView;
    .restart local v9       #panoramaPreviewLayout:Landroid/widget/RelativeLayout;
    .restart local v10       #previewLayout:Landroid/widget/RelativeLayout;
    .restart local v11       #previewY:I
    :cond_2
    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 552
    mul-int v0, v4, p6

    div-int v5, v0, p5

    .line 553
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v2, p3, v0

    .line 554
    const/4 v0, 0x1

    aget v0, v7, v0

    sub-int/2addr v0, v11

    add-int v0, v0, p4

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, v0, v5

    goto :goto_1

    .line 557
    :cond_3
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int v0, v0, p6

    div-int/lit8 v11, v0, 0x2

    .line 558
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 560
    mul-int v0, v4, p6

    div-int v5, v0, p5

    .line 561
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v2, p3, v0

    .line 562
    const/4 v0, 0x1

    aget v0, v7, v0

    add-int v0, v0, p4

    sub-int v3, v0, v11

    goto :goto_1

    .line 564
    :cond_4
    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 565
    mul-int v0, v5, p5

    div-int v4, v0, p6

    .line 566
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v2, p3, v0

    .line 567
    const/4 v0, 0x1

    aget v0, v7, v0

    add-int v0, v0, p4

    sub-int/2addr v0, v11

    add-int/lit8 v3, v0, 0x2

    .line 568
    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 573
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    sub-int v0, v0, p6

    div-int/lit8 v11, v0, 0x2

    .line 574
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 575
    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 576
    mul-int v0, v4, p6

    div-int v5, v0, p5

    .line 577
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aget v1, v7, v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    add-int v2, p3, v0

    .line 578
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v0, v0, p4

    sub-int v3, v0, v11

    goto/16 :goto_1

    .line 580
    :cond_6
    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 581
    mul-int v0, v5, p5

    div-int v4, v0, p6

    .line 582
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aget v1, v7, v1

    sub-int/2addr v0, v1

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v2, p3, v0

    .line 583
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v0, v0, p4

    sub-int/2addr v0, v11

    add-int/lit8 v3, v0, 0x2

    .line 584
    add-int/lit8 v5, v5, -0x2

    goto/16 :goto_1

    .line 587
    :cond_7
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    sub-int v0, v0, p6

    div-int/lit8 v11, v0, 0x2

    .line 588
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v0

    if-nez v0, :cond_8

    .line 589
    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 590
    mul-int v0, v4, p6

    div-int v5, v0, p5

    .line 591
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aget v1, v7, v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    add-int v2, p3, v0

    .line 592
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v0, v0, p4

    sub-int/2addr v0, v11

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, v0, v5

    goto/16 :goto_1

    .line 594
    :cond_8
    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 595
    mul-int v0, v5, p5

    div-int v4, v0, p6

    .line 596
    const/4 v0, 0x1

    aget v0, v7, v0

    add-int v2, p3, v0

    .line 597
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int v0, v0, p4

    sub-int/2addr v0, v11

    add-int/lit8 v3, v0, 0x2

    .line 598
    add-int/lit8 v5, v5, -0x2

    goto/16 :goto_1
.end method

.method public finishPanoramaShooting(Z)V
    .locals 6
    .parameter "save_image"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2431
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:finishPanoramaShooting!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2433
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2435
    :cond_0
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->clearAnimation()V

    .line 2436
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 2474
    :cond_1
    :goto_0
    return-void

    .line 2440
    :cond_2
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2444
    iput-boolean v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsProcessing:Z

    .line 2446
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:Finish morpho panorama shooting!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iput-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    .line 2448
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2450
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2452
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->drawPanoramaPreviewImage()Landroid/graphics/Canvas;

    .line 2459
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    if-lez v0, :cond_3

    .line 2461
    new-instance v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    invoke-direct {v0, p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    sput-object v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveOutputImageTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    .line 2462
    sget-object v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveOutputImageTask:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2472
    :goto_1
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f10012e

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2465
    :cond_3
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishAttachStillImageTask()V

    .line 2467
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->end()I

    .line 2468
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->finish()I

    .line 2469
    iput-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    .line 2470
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onPanoramaFinished()V

    goto :goto_1
.end method

.method public hidePanoramaLayout()V
    .locals 3

    .prologue
    .line 2992
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100126

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2993
    .local v0, panoramaPreviewLayout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 2994
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2996
    :cond_0
    return-void
.end method

.method public hidePanoramaUI()V
    .locals 0

    .prologue
    .line 3004
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hidePanoramaLayout()V

    .line 3005
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hideTipsLayout()V

    .line 3006
    return-void
.end method

.method public hideTipsLayout()V
    .locals 3

    .prologue
    .line 847
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100031

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 848
    .local v0, cameraTipsLayout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 849
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    :cond_0
    return-void
.end method

.method public init(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/PhotoModule;)V
    .locals 9
    .parameter "activity"
    .parameter "photoModule"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 309
    const-string v3, "HwCamera"

    const-string v4, "MorphoPanorama:init()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 311
    iput-object p2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 312
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setNeedReInit(Z)V

    .line 314
    const-string v3, "HwCamera"

    const-string v4, "MorphoPanorama:onCreate()"

    invoke-static {v3, v4}, Lcom/morpho/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->config:Landroid/content/res/Configuration;

    .line 317
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updateDeviceRotation()V

    .line 318
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    .line 319
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 320
    .local v2, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 321
    .local v1, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 322
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscope:Landroid/hardware/Sensor;

    .line 325
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 326
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVector:Landroid/hardware/Sensor;

    .line 329
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 330
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometer:Landroid/hardware/Sensor;

    .line 333
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 334
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticField:Landroid/hardware/Sensor;

    goto :goto_0

    .line 338
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeList:Ljava/util/ArrayList;

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerList:Ljava/util/ArrayList;

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationList:Ljava/util/ArrayList;

    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorList:Ljava/util/ArrayList;

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorInfoMngList:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f9

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_In:Landroid/graphics/Bitmap;

    .line 346
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f8

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGuideImage_Out:Landroid/graphics/Bitmap;

    .line 348
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f7

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureSucess:Landroid/graphics/Bitmap;

    .line 350
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200fa

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCaptureWarning:Landroid/graphics/Bitmap;

    .line 353
    sget v3, Lcom/android/hwcamera/ConstantValue;->PANORAMA_PREVIEW_HEIGHT:I

    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewHeight:I

    .line 354
    sget v3, Lcom/android/hwcamera/ConstantValue;->PANORAMA_PREVIEW_BOTTOM_MARGIN:I

    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMarginBottom:I

    .line 356
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_5

    .line 357
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f100126

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    .line 359
    :cond_5
    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v3

    iput v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientation:I

    .line 360
    return-void
.end method

.method public initPanoramaPreviewLayout()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->calculatePanoramaPreviewSize()V

    .line 733
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotatePreviewLayout()V

    .line 734
    return-void
.end method

.method public isAdverseDirection()Z
    .locals 2

    .prologue
    .line 1042
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalShot()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsHorizontalShot:Z

    return v0
.end method

.method public isPanoramaShooting()Z
    .locals 3

    .prologue
    .line 2157
    const-string v0, "HwCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MorphoPanorama:isPanoramaShooting, mIsShooting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2537
    const-string v0, "HwCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MorphoPanorama:onAccuracyChanged() type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/morpho/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "success"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    .line 1606
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:onAutoFocus!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1608
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1609
    monitor-exit v1

    .line 1629
    :goto_0
    return-void

    .line 1610
    :cond_0
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCType:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCLenearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1612
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1614
    :cond_1
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCType:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

    if-eqz v0, :cond_2

    .line 1616
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    :try_start_1
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroCorrectionValue:[F

    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroValueList:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/morpho/utils/SensorUtil;->getAverage([FLjava/util/ArrayList;)Z

    .line 1618
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1619
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1621
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setAutoExposureLock(Z)V

    .line 1622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setAutoWhiteBalanceLock(Z)V

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    .line 1624
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewBuff:[B

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1625
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, p0, v3}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1628
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1619
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onClickBackButton()V
    .locals 2

    .prologue
    .line 3010
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 3011
    :try_start_0
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 3012
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    .line 3014
    :cond_0
    monitor-exit v1

    .line 3015
    return-void

    .line 3014
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onClickShootingButton()V
    .locals 6

    .prologue
    .line 952
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:onClickShootingButton!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 954
    :try_start_0
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    .line 973
    :goto_0
    monitor-exit v1

    .line 974
    :goto_1
    return-void

    .line 958
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showStorageHintMessage()V

    .line 960
    monitor-exit v1

    goto :goto_1

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 963
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->hasPictureSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 965
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 966
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->clearFakePictureNum()V

    .line 967
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->cleanQuickUris()V

    .line 971
    :cond_2
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->startPanoramaShooting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onClickSwitchDir(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 922
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    if-ne v0, v1, :cond_1

    .line 923
    const/4 v0, 0x0

    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    .line 931
    :goto_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 935
    :cond_0
    return-void

    .line 927
    :cond_1
    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppPanoramaDirection:I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "conf"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->config:Landroid/content/res/Configuration;

    .line 364
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updateDeviceRotation()V

    .line 365
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 612
    if-eqz p1, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaHint()V

    goto :goto_0

    .line 610
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1047
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:onOrientationChanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsProcessing:Z

    if-nez v0, :cond_0

    .line 1051
    iput p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientation:I

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotateProgressLayout()V

    .line 1056
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsProcessing:Z

    if-nez v0, :cond_1

    .line 1057
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    .line 1060
    :cond_1
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updateDeviceRotation()V

    .line 1061
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->calculatePanoramaPreviewSize()V

    .line 1062
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotatePreviewLayout()V

    .line 1064
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 895
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:onPause!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V

    .line 898
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    .line 900
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 913
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 915
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->cancel()V

    .line 917
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->release()V

    .line 919
    :cond_1
    return-void

    .line 913
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "data"
    .parameter "camera"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "SWL_SLEEP_WITH_LOCK_HELD"
        }
    .end annotation

    .prologue
    .line 1682
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1684
    :cond_0
    monitor-exit v8

    .line 1765
    :goto_0
    return-void

    .line 1688
    :cond_1
    invoke-direct {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isFakeImage([B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1689
    const-string v1, "HwCamera"

    const-string v2, "Morpho panorama receive fake image!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :goto_1
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStatus:[I

    const/4 v2, 0x0

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v1, :sswitch_data_0

    .line 1735
    const-wide/16 v1, 0x32

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1740
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 1741
    .local v7, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v7, :cond_3

    .line 1742
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1743
    const-string v1, "auto"

    invoke-virtual {v7, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1745
    :cond_2
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1, v7}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1748
    :cond_3
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1749
    iget-boolean v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    if-eqz v1, :cond_4

    .line 1751
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    .line 1752
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1753
    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v1

    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, p0, v3}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1757
    :cond_4
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_7

    .line 1758
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showStartAnimation()V

    .line 1764
    .end local v7           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1690
    :cond_5
    :try_start_3
    invoke-direct {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isQuickThumbnail([B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1691
    const-string v1, "HwCamera"

    const-string v2, "Morpho panorama receive quick thumbnail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1694
    :cond_6
    new-instance v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;II[B[B)V

    .line 1696
    .local v0, still_image_data:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;
    invoke-direct {p0, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->addStillImage(Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;)V

    goto :goto_1

    .line 1722
    .end local v0           #still_image_data:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishPanoramaShooting(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1725
    const-wide/16 v1, 0x32

    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1729
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    goto :goto_3

    .line 1726
    :catch_0
    move-exception v6

    .line 1727
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 1736
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 1737
    .restart local v6       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1760
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v7       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_7
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->clearAnimation()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1718
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 992
    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    if-nez v0, :cond_1

    .line 995
    :cond_0
    monitor-exit v8

    .line 1032
    :goto_0
    return-void

    .line 998
    :cond_1
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewCount:I

    .line 999
    invoke-direct {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->savePreviewImage([B)V

    .line 1000
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setSensorAngleMatrix()V

    .line 1001
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    iget v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mUseImage:I

    iget-object v3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMotionData:[B

    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStatus:[I

    iget-object v6, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/morpho/core/MorphoPanoramaGP;->attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v7

    .line 1003
    .local v7, ret:I
    if-eqz v7, :cond_2

    .line 1004
    const-string v0, "HwCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MorphoPanorama:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attachPreview() -> 0x%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirection:[I

    invoke-virtual {v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->getCurrentDirection([I)I

    move-result v7

    .line 1009
    if-eqz v7, :cond_3

    .line 1010
    const-string v0, "HwCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MorphoPanorama:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCurrentDirection() -> 0x%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :cond_3
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updatePanoramaPreview()V

    .line 1018
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mImageID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_5

    .line 1019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mProcessPreview:Z

    .line 1020
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1021
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, p0, v5}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1022
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updateStatusAfterFirstPictureTaken()V

    .line 1023
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I

    .line 1027
    :goto_1
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1028
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1030
    :cond_4
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirection:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPrevDirection:I

    .line 1031
    monitor-exit v8

    goto/16 :goto_0

    .end local v7           #ret:I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1025
    .restart local v7       #ret:I
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPreviewBuff:[B

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onResume(Lcom/android/hwcamera/CameraManager$CameraProxy;)V
    .locals 5
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 383
    const-string v1, "HwCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoPanorama:onResume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 386
    invoke-static {}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->getCamereOrientation()I

    move-result v1

    iput v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraOrientation:I

    .line 435
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->updatePreviewSize()V

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, degrees:I
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 451
    const-string v1, "HwCamera"

    const-string v2, "rotation error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 456
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f10002d

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ShutterButton;

    iput-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 457
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100127

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcList:Ljava/util/ArrayList;

    .line 459
    iput-boolean v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    .line 461
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->initPanoramaPreviewLayout()V

    .line 463
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isProcessingFinishTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    :cond_1
    :goto_1
    return-void

    .line 439
    :pswitch_0
    const/4 v0, 0x0

    .line 440
    goto :goto_0

    .line 442
    :pswitch_1
    const/16 v0, 0x5a

    .line 443
    goto :goto_0

    .line 445
    :pswitch_2
    const/16 v0, 0xb4

    .line 446
    goto :goto_0

    .line 448
    :pswitch_3
    const/16 v0, 0x10e

    .line 449
    goto :goto_0

    .line 467
    :cond_2
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSensorSyncObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2546
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 2547
    .local v13, values:[F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscope:Landroid/hardware/Sensor;

    if-ne v14, v15, :cond_3

    .line 2548
    move-object/from16 v0, p1

    iget-wide v11, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 2550
    .local v11, timestamp:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    invoke-virtual {v14}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->isStarted()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    const/16 v15, 0x7d0

    if-ge v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    if-ltz v14, :cond_1

    .line 2553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v14}, Lcom/morpho/utils/Matrix3x3;->get()[F

    move-result-object v4

    .line 2554
    .local v4, cur_mat:[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPrevSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v14}, Lcom/morpho/utils/Matrix3x3;->get()[F

    move-result-object v9

    .line 2555
    .local v9, prev_mat:[F
    sget v14, Lcom/morpho/app/panorama_gp/MorphoPanorama;->BOUNDARY_DIFF_ANGLE:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v14}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->checkAngleDiff([F[FF)Z

    move-result v3

    .line 2557
    .local v3, check:Z
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v4, v14, v9, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2558
    if-nez v3, :cond_9

    .line 2559
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    .line 2560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v14, :cond_0

    .line 2561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroValueList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2563
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCProgressBar:Landroid/widget/ProgressBar;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2577
    .end local v3           #check:Z
    .end local v4           #cur_mat:[F
    .end local v9           #prev_mat:[F
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->prev_timestamp:J

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-eqz v14, :cond_2

    .line 2578
    invoke-virtual {v13}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 2579
    .local v2, c_value:[F
    const/4 v14, 0x0

    aget v15, v2, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroCorrectionValue:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-float v15, v15, v17

    aput v15, v2, v14

    .line 2580
    const/4 v14, 0x1

    aget v15, v2, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroCorrectionValue:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-float v15, v15, v17

    aput v15, v2, v14

    .line 2581
    const/4 v14, 0x2

    aget v15, v2, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroCorrectionValue:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    sub-float v15, v15, v17

    aput v15, v2, v14

    .line 2582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorDeltaRV:[F

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->prev_timestamp:J

    move-wide/from16 v17, v0

    sub-long v17, v11, v17

    move-wide/from16 v0, v17

    invoke-static {v14, v2, v0, v1}, Lcom/morpho/utils/SensorUtil;->getDeltaRotationVector([F[FJ)V

    .line 2585
    .end local v2           #c_value:[F
    :cond_2
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->prev_timestamp:J

    .line 2586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorDeltaRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v14}, Lcom/morpho/utils/Matrix3x3;->get()[F

    move-result-object v5

    .line 2587
    .local v5, g_delta_rmat:[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v14}, Lcom/morpho/utils/Matrix3x3;->get()[F

    move-result-object v6

    .line 2588
    .local v6, g_rmat:[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroSensorDeltaRV:[F

    invoke-static {v5, v14}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 2590
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraOrientation:I

    invoke-static {v5, v5, v14}, Lcom/morpho/utils/SensorUtil;->rotateMatrix([F[FI)V

    .line 2592
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraOrientation:I

    invoke-static {v6, v6, v14}, Lcom/morpho/utils/SensorUtil;->rotateMatrix([F[FI)V

    .line 2593
    invoke-static {v6, v6, v5}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 2594
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v14, :cond_3

    .line 2595
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeIx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeIx:I

    .line 2596
    new-instance v7, Lcom/morpho/app/panorama_gp/SensorInfo;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeIx:I

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/morpho/app/panorama_gp/SensorInfo;-><init>(Landroid/hardware/SensorEvent;I)V

    .line 2597
    .local v7, info:Lcom/morpho/app/panorama_gp/SensorInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    .end local v5           #g_delta_rmat:[F
    .end local v6           #g_rmat:[F
    .end local v7           #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    .end local v11           #timestamp:J
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVector:Landroid/hardware/Sensor;

    if-ne v14, v15, :cond_4

    .line 2601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRVSensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v14}, Lcom/morpho/utils/Matrix3x3;->get()[F

    move-result-object v10

    .line 2602
    .local v10, rv_rmat:[F
    invoke-static {v10, v13}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 2603
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraOrientation:I

    invoke-static {v10, v10, v14}, Lcom/morpho/utils/SensorUtil;->rotateMatrix([F[FI)V

    .line 2604
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v14, :cond_4

    .line 2605
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorIx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorIx:I

    .line 2606
    new-instance v7, Lcom/morpho/app/panorama_gp/SensorInfo;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorIx:I

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/morpho/app/panorama_gp/SensorInfo;-><init>(Landroid/hardware/SensorEvent;I)V

    .line 2607
    .restart local v7       #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    .end local v7           #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    .end local v10           #rv_rmat:[F
    :cond_4
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne v14, v15, :cond_5

    .line 2612
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v14}, [F->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerValues:[F

    .line 2613
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerTimeStamp:J

    .line 2614
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v14, :cond_5

    .line 2615
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerIx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerIx:I

    .line 2616
    new-instance v7, Lcom/morpho/app/panorama_gp/SensorInfo;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerIx:I

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/morpho/app/panorama_gp/SensorInfo;-><init>(Landroid/hardware/SensorEvent;I)V

    .line 2617
    .restart local v7       #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2620
    .end local v7           #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticField:Landroid/hardware/Sensor;

    if-ne v14, v15, :cond_6

    .line 2621
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v14}, [F->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldValues:[F

    .line 2622
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldTimeStamp:J

    .line 2624
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerValues:[F

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldValues:[F

    if-eqz v14, :cond_8

    .line 2625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->inRM:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerValues:[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldValues:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v14, v15, v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 2627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->inRM:[F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationValues:[F

    invoke-static {v14, v15}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 2628
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z

    if-eqz v14, :cond_7

    .line 2629
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationIx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationIx:I

    .line 2630
    new-instance v7, Lcom/morpho/app/panorama_gp/SensorInfo;

    invoke-direct {v7}, Lcom/morpho/app/panorama_gp/SensorInfo;-><init>()V

    .line 2631
    .restart local v7       #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerTimeStamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldTimeStamp:J

    move-wide/from16 v17, v0

    cmp-long v14, v14, v17

    if-lez v14, :cond_d

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerTimeStamp:J

    :goto_1
    iput-wide v14, v7, Lcom/morpho/app/panorama_gp/SensorInfo;->timestamp:J

    .line 2633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationValues:[F

    invoke-virtual {v14}, [F->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    iput-object v14, v7, Lcom/morpho/app/panorama_gp/SensorInfo;->values:[F

    .line 2634
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationIx:I

    iput v14, v7, Lcom/morpho/app/panorama_gp/SensorInfo;->index:I

    .line 2635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mOrientationList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    .end local v7           #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldValues:[F

    .line 2638
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAccelerometerValues:[F

    .line 2639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMASensorRM:Lcom/morpho/utils/Matrix3x3;

    invoke-virtual {v14}, Lcom/morpho/utils/Matrix3x3;->get()[F

    move-result-object v8

    .line 2640
    .local v8, o_rmat:[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->inRM:[F

    invoke-static {v8, v14}, Lcom/morpho/utils/Matrix3x3;->convMatrix16to9([F[F)V

    .line 2641
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraOrientation:I

    invoke-static {v8, v8, v14}, Lcom/morpho/utils/SensorUtil;->rotateMatrix([F[FI)V

    .line 2643
    .end local v8           #o_rmat:[F
    :cond_8
    monitor-exit v16

    .line 2644
    return-void

    .line 2565
    .restart local v3       #check:Z
    .restart local v4       #cur_mat:[F
    .restart local v9       #prev_mat:[F
    .restart local v11       #timestamp:J
    :cond_9
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->prev_timestamp:J

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-eqz v14, :cond_a

    .line 2566
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->prev_timestamp:J

    move-wide/from16 v17, v0

    sub-long v17, v11, v17

    move-wide/from16 v0, v17

    long-to-float v15, v0

    const v17, 0x358637bd

    mul-float v15, v15, v17

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    .line 2568
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    const/16 v15, 0x7d0

    if-lt v14, v15, :cond_c

    .line 2569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCTimer:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    invoke-virtual {v14}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->cancel()V

    .line 2570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2574
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 2643
    .end local v3           #check:Z
    .end local v4           #cur_mat:[F
    .end local v9           #prev_mat:[F
    .end local v11           #timestamp:J
    .end local v13           #values:[F
    :catchall_0
    move-exception v14

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 2571
    .restart local v3       #check:Z
    .restart local v4       #cur_mat:[F
    .restart local v9       #prev_mat:[F
    .restart local v11       #timestamp:J
    .restart local v13       #values:[F
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCWaitTime:I

    const/16 v15, 0x3e8

    if-le v14, v15, :cond_b

    .line 2572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mGyroValueList:Ljava/util/ArrayList;

    invoke-virtual {v13}, [F->clone()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2631
    .end local v3           #check:Z
    .end local v4           #cur_mat:[F
    .end local v9           #prev_mat:[F
    .end local v11           #timestamp:J
    .restart local v7       #info:Lcom/morpho/app/panorama_gp/SensorInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMagneticFieldTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public resetTipsMargin()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 843
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/hwcamera/CameraActivity;->setTipsViewMargin(IIII)V

    .line 844
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 2892
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2893
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2898
    :goto_0
    return-void

    .line 2896
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2897
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 2901
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2902
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2907
    :goto_0
    return-void

    .line 2905
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2906
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setNeedReInit(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2977
    iput-boolean p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->needReInit:Z

    .line 2978
    return-void
.end method

.method public setPanoramaParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return-void

    .line 2914
    :cond_1
    if-nez p1, :cond_2

    .line 2915
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2917
    :cond_2
    if-eqz p1, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->clearShootMode()V

    .line 2922
    const-string v0, "hw-image-post-process"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    const-string v0, "hw-image-denoise"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2926
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2927
    iget v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPictureW:I

    iget v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraPictureH:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2928
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setShotHorizontal(Z)V
    .locals 0
    .parameter "ishorizontal"

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsHorizontalShot:Z

    .line 677
    return-void
.end method

.method public setTipsMargin()V
    .locals 6

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 826
    .local v1, left:I
    const/4 v3, 0x0

    .line 827
    .local v3, top:I
    const/4 v2, 0x0

    .line 828
    .local v2, right:I
    const/4 v0, 0x0

    .line 829
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 830
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 831
    sget v4, Lcom/android/hwcamera/ConstantValue;->PANORAMA_HINT_HEIGHT_APPEND:I

    sget v5, Lcom/android/hwcamera/ConstantValue;->PANORAMA_PREVIEW_BOTTOM_MARGIN:I

    add-int/2addr v4, v5

    add-int/lit8 v0, v4, 0xe

    .line 839
    :goto_0
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/android/hwcamera/CameraActivity;->setTipsViewMargin(IIII)V

    .line 840
    return-void

    .line 833
    :cond_0
    sget v4, Lcom/android/hwcamera/ConstantValue;->PANORAMA_HINT_HEIGHT_APPEND:I

    sget v5, Lcom/android/hwcamera/ConstantValue;->PANORAMA_PREVIEW_BOTTOM_MARGIN:I

    add-int v0, v4, v5

    goto :goto_0

    .line 836
    :cond_1
    sget v4, Lcom/android/hwcamera/ConstantValue;->PANORAMA_PREVIEW_HEIGHT:I

    sget v5, Lcom/android/hwcamera/ConstantValue;->PANORAMA_PREVIEW_BOTTOM_MARGIN:I

    add-int v1, v4, v5

    .line 837
    move v2, v1

    goto :goto_0
.end method

.method public showArrows(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 945
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mDirsAnimeIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    .line 948
    :cond_1
    return-void
.end method

.method public showPanoramaHint()V
    .locals 2

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isAdverseDirection()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z

    if-eqz v1, :cond_1

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 876
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setTipsMargin()V

    .line 866
    const v0, 0x7f0d0145

    .line 867
    .local v0, resId:I
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isHorizontalShot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    const v0, 0x7f0d0144

    .line 870
    :cond_2
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->panoramaHintsIsShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 871
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    goto :goto_0

    .line 873
    :cond_3
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 874
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHintDelay(I)V

    goto :goto_0
.end method

.method public showPanoramaLayout()V
    .locals 3

    .prologue
    .line 2985
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100126

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2986
    .local v0, panoramaPreviewLayout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 2987
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2989
    :cond_0
    return-void
.end method

.method public showPanoramaUI()V
    .locals 0

    .prologue
    .line 2999
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaLayout()V

    .line 3000
    invoke-virtual {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showTipsLayout()V

    .line 3001
    return-void
.end method

.method public showTipsLayout()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100031

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 855
    .local v0, cameraTipsLayout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 856
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 858
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 2889
    :cond_0
    return-void
.end method

.method public updateDeviceRotation()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->config:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mAppDeviceRotation:I

    .line 293
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
