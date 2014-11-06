.class public final Lcom/android/gallery3d/filtershow/omron/ReShape;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "ReShape.java"


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

.method private native ReShapeFace(JLandroid/graphics/Bitmap;)I
.end method

.method private native SetPointFromHandle(JJ)I
.end method

.method public static createHandle()Lcom/android/gallery3d/filtershow/omron/ReShape;
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/ReShape;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/ReShape;-><init>()V

    .line 10
    .local v0, reShape:Lcom/android/gallery3d/filtershow/omron/ReShape;
    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/ReShape;->CreateHandle()J

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
.method public deleteHandle()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 20
    const/4 v0, -0x7

    .line 21
    .local v0, nRet:I
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 23
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/ReShape;->DeleteHandle(J)I

    move-result v0

    .line 24
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 26
    :cond_0
    return v0
.end method

.method public reshapeFace(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->ReShapeFace(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setPointFromHandle(Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;)I
    .locals 4
    .parameter "result"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 33
    const/4 v2, -0x7

    .line 36
    :goto_0
    return v2

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->getOkaoHandle()J

    move-result-wide v0

    .line 36
    .local v0, hPtResult:J
    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->SetPointFromHandle(JJ)I

    move-result v2

    goto :goto_0
.end method
