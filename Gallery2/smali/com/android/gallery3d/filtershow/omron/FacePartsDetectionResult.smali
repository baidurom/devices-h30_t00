.class public final Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "FacePartsDetectionResult.java"


# static fields
.field public static final FEATURE_NO_POINT:I = -0x1

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native CreateHandle()J
.end method

.method private native DeleteHandle(J)I
.end method

.method private native GetResult(JI[Landroid/graphics/Point;[I)I
.end method

.method public static createResult()Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;-><init>()V

    .line 10
    .local v0, facePartDetRes:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;
    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->CreateHandle()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 11
    iget-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteResult()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 20
    const/4 v0, -0x7

    .line 21
    .local v0, net:I
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 23
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->DeleteHandle(J)I

    move-result v0

    .line 24
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 26
    :cond_0
    return v0
.end method

.method public getResult(I[Landroid/graphics/Point;[I)I
    .locals 6
    .parameter "nPointNum"
    .parameter "aptPoint"
    .parameter "anConfidence"

    .prologue
    .line 31
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->GetResult(JI[Landroid/graphics/Point;[I)I

    move-result v0

    return v0
.end method
