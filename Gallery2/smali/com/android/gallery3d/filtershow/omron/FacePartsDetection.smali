.class public final Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "FacePartsDetection.java"


# static fields
.field public static final DTVERSION_IP_V1:I = 0x2774

.field public static final DTVERSION_IP_V2:I = 0x27d8

.field public static final DTVERSION_IP_V3:I = 0x283c

.field public static final DTVERSION_SOFT_V3:I = 0x12c

.field public static final DTVERSION_SOFT_V4:I = 0x190

.field public static final DTVERSION_SOFT_V5:I = 0x1f4

.field public static final DTVERSION_UNKNOWN:I = 0x0

.field public static final FEATURE_NO_POINT:I = -0x1

.field public static final PT_MODE_CONF_DEFAULT:I = 0x0

.field public static final PT_MODE_CONF_NOUSE:I = 0x1

.field public static final PT_MODE_DEFAULT:I = 0x0

.field public static final PT_MODE_FAST:I = 0x1

.field public static final PT_MODE_SUPER_FAST:I = 0x2

.field public static final PT_POINT_KIND_MAX:I = 0xc

.field public static final PT_POINT_LEFT_EYE:I = 0x0

.field public static final PT_POINT_LEFT_EYE_IN:I = 0x3

.field public static final PT_POINT_LEFT_EYE_OUT:I = 0x4

.field public static final PT_POINT_MOUTH:I = 0x2

.field public static final PT_POINT_MOUTH_LEFT:I = 0x7

.field public static final PT_POINT_MOUTH_RIGHT:I = 0x8

.field public static final PT_POINT_MOUTH_UP:I = 0xb

.field public static final PT_POINT_NOSE_LEFT:I = 0x9

.field public static final PT_POINT_NOSE_RIGHT:I = 0xa

.field public static final PT_POINT_RIGHT_EYE:I = 0x1

.field public static final PT_POINT_RIGHT_EYE_IN:I = 0x5

.field public static final PT_POINT_RIGHT_EYE_OUT:I = 0x6

.field public static final PT_POSE_FRONT:I = 0x0

.field public static final PT_POSE_LF_PROFILE:I = -0x5a

.field public static final PT_POSE_LH_PROFILE:I = -0x2d

.field public static final PT_POSE_RF_PROFILE:I = 0x5a

.field public static final PT_POSE_RH_PROFILE:I = 0x2d

.field public static final PT_POSE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native CreateHandle()J
.end method

.method private native DeleteHandle(J)I
.end method

.method private native Detect(JLandroid/graphics/Bitmap;J)I
.end method

.method private native GetConfMode(J)I
.end method

.method private native GetMode(J)I
.end method

.method private native SetConfMode(JI)I
.end method

.method private native SetMode(JI)I
.end method

.method private native SetPositionFromHandle(JJI)I
.end method

.method public static createHandle()Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;
    .locals 5

    .prologue
    .line 10
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;-><init>()V

    .line 11
    .local v0, facePartDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;
    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->CreateHandle()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 12
    iget-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 16
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteHandle()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 21
    const/4 v0, -0x7

    .line 22
    .local v0, net:I
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 23
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->DeleteHandle(J)I

    move-result v0

    .line 24
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 26
    :cond_0
    return v0
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;)I
    .locals 6
    .parameter "bitmap"
    .parameter "hResult"

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 46
    const/4 v0, -0x7

    .line 50
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 49
    .local v1, hPT:J
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->getOkaoHandle()J

    move-result-wide v4

    .local v4, hPtResult:J
    move-object v0, p0

    move-object v3, p1

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->Detect(JLandroid/graphics/Bitmap;J)I

    move-result v0

    goto :goto_0
.end method

.method public getConfMode()I
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->GetConfMode(J)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->GetMode(J)I

    move-result v0

    return v0
.end method

.method public setConfMode(I)I
    .locals 2
    .parameter "Mode"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->SetConfMode(JI)I

    move-result v0

    return v0
.end method

.method public setMode(I)I
    .locals 2
    .parameter "nMode"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->SetMode(JI)I

    move-result v0

    return v0
.end method

.method public setPositionFromHandle(Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;I)I
    .locals 6
    .parameter "result"
    .parameter "nFaceIndex"

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 34
    const/4 v0, -0x7

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->getOkaoHandle()J

    move-result-wide v3

    .line 37
    .local v3, hDtResult:J
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->SetPositionFromHandle(JJI)I

    move-result v0

    goto :goto_0
.end method
