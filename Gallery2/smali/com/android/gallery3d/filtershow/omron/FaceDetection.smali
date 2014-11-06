.class public final Lcom/android/gallery3d/filtershow/omron/FaceDetection;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "FaceDetection.java"


# static fields
.field public static final ACCURACY_HIGH_TR:I = 0x1

.field public static final ACCURACY_NORMAL:I = 0x0

.field public static final ANGLE_0:I = 0x1001

.field public static final ANGLE_1:I = 0x2002

.field public static final ANGLE_10:I = 0x400400

.field public static final ANGLE_11:I = 0x800800

.field public static final ANGLE_2:I = 0x4004

.field public static final ANGLE_3:I = 0x8008

.field public static final ANGLE_4:I = 0x10010

.field public static final ANGLE_5:I = 0x20020

.field public static final ANGLE_6:I = 0x40040

.field public static final ANGLE_7:I = 0x80080

.field public static final ANGLE_8:I = 0x100100

.field public static final ANGLE_9:I = 0x200200

.field public static final ANGLE_ALL:I = 0xffffff

.field public static final ANGLE_MASK_LEFT:I = 0xfff000

.field public static final ANGLE_MASK_RIGHT:I = 0xfff

.field public static final ANGLE_NONE:I = 0x0

.field public static final ANGLE_POSE_EXT0:I = 0x0

.field public static final ANGLE_POSE_EXT1:I = 0x10010

.field public static final ANGLE_POSE_EXTALL:I = 0x70070

.field public static final ANGLE_ROTATION_EXT0:I = 0x0

.field public static final ANGLE_ROTATION_EXT1:I = 0x1001

.field public static final ANGLE_ROTATION_EXT2:I = 0x2002

.field public static final ANGLE_ROTATION_EXTALL:I = 0xb00b

.field public static final ANGLE_U15:I = 0x1001

.field public static final ANGLE_U45:I = 0x803803

.field public static final ANGLE_ULR15:I = 0x209209

.field public static final ANGLE_ULR45:I = 0xf1ff1f

.field public static final DETECT_HEAD_NOUSE:I = 0x0

.field public static final DETECT_HEAD_USE:I = 0x1000000

.field public static final DT_MODE_DEFAULT:I = 0x0

.field public static final DT_MODE_MOTION1:I = 0x1

.field public static final DT_MODE_MOTION2:I = 0x2

.field public static final DT_MODE_MOTION3:I = 0x3

.field public static final DT_POSE_FRONT:I = 0x0

.field public static final DT_POSE_HEAD:I = -0xb4

.field public static final DT_POSE_LF_PROFILE:I = -0x5a

.field public static final DT_POSE_LH_PROFILE:I = -0x2d

.field public static final DT_POSE_RF_PROFILE:I = 0x5a

.field public static final DT_POSE_RH_PROFILE:I = 0x2d

.field public static final POSE_FRONT:I = 0x0

.field public static final POSE_HALF_PROFILE:I = 0x1

.field public static final POSE_PROFILE:I = 0x2

.field public static final POSE_TYPE_COUNT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native Create()J
.end method

.method private native Delete(J)I
.end method

.method private native Detection(Landroid/graphics/Bitmap;JIJ)I
.end method

.method private native GetMemorySize(J)I
.end method

.method private native GetMode(J)I
.end method

.method private native GetRectangleMask(JLandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native SetAngle(J[II)I
.end method

.method private native SetFaceSizeRange(JII)I
.end method

.method private native SetMemorySize(JI)I
.end method

.method private native SetMode(JI)I
.end method

.method private native SetRectangleMask(JLandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native SetStep(JII)I
.end method

.method private native SetThreshold(JII)I
.end method

.method private native SetTimeout(JII)I
.end method

.method public static create()Lcom/android/gallery3d/filtershow/omron/FaceDetection;
    .locals 5

    .prologue
    .line 8
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;-><init>()V

    .line 9
    .local v0, faceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;
    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->Create()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 10
    iget-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 14
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 18
    const/4 v0, -0x7

    .line 19
    .local v0, net:I
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 20
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->Delete(J)I

    move-result v0

    .line 21
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 23
    :cond_0
    return v0
.end method

.method public detection(Landroid/graphics/Bitmap;ILcom/android/gallery3d/filtershow/omron/FaceDetectionResult;)I
    .locals 7
    .parameter "bitmap"
    .parameter "nAccuracy"
    .parameter "result"

    .prologue
    .line 28
    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 29
    .local v2, hDt:J
    const-wide/16 v5, 0x0

    .line 31
    .local v5, hDtResult:J
    if-nez p3, :cond_0

    .line 33
    const/4 v0, -0x7

    .line 37
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->getOkaoHandle()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->Detection(Landroid/graphics/Bitmap;JIJ)I

    move-result v0

    goto :goto_0
.end method

.method public getMemorySize()I
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->GetMemorySize(J)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->GetMode(J)I

    move-result v0

    return v0
.end method

.method public getRectangleMask(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .parameter "rcNonTrackingArea"
    .parameter "rcTrackingArea"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->GetRectangleMask(JLandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setAngle([II)I
    .locals 2
    .parameter "anNonTrackingAngle"
    .parameter "nTrackingAngleExtension"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetAngle(J[II)I

    move-result v0

    return v0
.end method

.method public setFaceSizeRange(II)I
    .locals 2
    .parameter "nMinSize"
    .parameter "nMaxSize"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetFaceSizeRange(JII)I

    move-result v0

    return v0
.end method

.method public setMemorySize(I)I
    .locals 2
    .parameter "unSize"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetMemorySize(JI)I

    move-result v0

    return v0
.end method

.method public setMode(I)I
    .locals 2
    .parameter "nMode"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetMode(JI)I

    move-result v0

    return v0
.end method

.method public setRectangleMask(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .parameter "rcNonTrackingArea"
    .parameter "rcTrackingArea"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetRectangleMask(JLandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setStep(II)I
    .locals 2
    .parameter "nNonTrackingStep"
    .parameter "nTrackingStep"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetStep(JII)I

    move-result v0

    return v0
.end method

.method public setThreshold(II)I
    .locals 2
    .parameter "nNonTrackingThreshold"
    .parameter "nTrackingThreshold"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetThreshold(JII)I

    move-result v0

    return v0
.end method

.method public setTimeout(II)I
    .locals 2
    .parameter "nNonTrackingTimeout"
    .parameter "nTrackingTimeout"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->SetTimeout(JII)I

    move-result v0

    return v0
.end method
