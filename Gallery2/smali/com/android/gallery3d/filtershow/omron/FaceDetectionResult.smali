.class public final Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "FaceDetectionResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native Clear(J)I
.end method

.method private native Create(II)J
.end method

.method private native Delete(J)I
.end method

.method private native GetFaceCount(J)I
.end method

.method private native GetFaceInfo(JILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I
.end method

.method public static createResult(II)Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;
    .locals 5
    .parameter "nMaxFaceNumber"
    .parameter "nMaxSwapNumber"

    .prologue
    .line 7
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;-><init>()V

    .line 8
    .local v0, faceDetRes:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;
    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->Create(II)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 9
    iget-wide v1, v0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 13
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearResult()I
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->Clear(J)I

    move-result v0

    return v0
.end method

.method public deleteResult()I
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

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->Delete(J)I

    move-result v0

    .line 24
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 26
    :cond_0
    return v0
.end method

.method public getFaceCount()I
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->GetFaceCount(J)I

    move-result v0

    return v0
.end method

.method public getFaceInfo(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 8
    .parameter "nIndex"
    .parameter "leftTop"
    .parameter "rightTop"
    .parameter "leftBottom"
    .parameter "rightBottom"

    .prologue
    .line 34
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->GetFaceInfo(JILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method
