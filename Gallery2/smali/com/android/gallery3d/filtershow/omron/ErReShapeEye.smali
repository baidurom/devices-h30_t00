.class public final Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "ErReShapeEye.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native CreateHandle()J
.end method

.method private native DeleteHandle(J)I
.end method

.method private native ReShapeEye(JLandroid/graphics/Bitmap;)I
.end method

.method private native SetPointFromHandle(JJJ)I
.end method

.method private native SetThreshold(JI)I
.end method

.method public static createHandle()Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;
    .locals 5

    .prologue
    .line 8
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;-><init>()V

    .line 9
    .local v0, er:Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;
    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;->CreateHandle()J

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
.method public deleteHandle()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 19
    const/4 v0, -0x7

    .line 20
    .local v0, nRet:I
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 22
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;->DeleteHandle(J)I

    move-result v0

    .line 23
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 25
    :cond_0
    return v0
.end method

.method public reShapeEye(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;->ReShapeEye(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setPointFromHandle(Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;)I
    .locals 7
    .parameter "result"
    .parameter "handle"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    const/4 v0, -0x7

    .line 36
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->getOkaoHandle()J

    move-result-wide v3

    .line 35
    .local v3, hPtResult:J
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;->getOkaoHandle()J

    move-result-wide v5

    .line 36
    .local v5, hEO:J
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;->SetPointFromHandle(JJJ)I

    move-result v0

    goto :goto_0
.end method

.method public setThreshold(I)I
    .locals 2
    .parameter "nThreshold"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/ErReShapeEye;->SetThreshold(JI)I

    move-result v0

    return v0
.end method
