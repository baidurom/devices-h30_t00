.class public Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;
.super Ljava/lang/Object;
.source "FacePartsDetectionIMP.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FacePartsDetectionIMP"


# instance fields
.field private mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

.field private mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->createHandle()Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    if-nez v0, :cond_1

    .line 14
    const-string v0, "FacePartsDetectionIMP"

    const-string v1, "create face parts detection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->createResult()Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->deleteHandle()I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    .line 21
    const-string v0, "FacePartsDetectionIMP"

    const-string v1, "create face parts detaection result failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->deleteResult()I

    .line 29
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->deleteHandle()I

    .line 33
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    .line 35
    :cond_1
    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;I)Z
    .locals 5
    .parameter "bitmap"
    .parameter "faceDetectionResult"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->getFaceCount()I

    move-result v0

    .line 41
    .local v0, faceCount:I
    if-lez v0, :cond_0

    if-ge p3, v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, result:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    invoke-virtual {v3, p2, p3}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->setPositionFromHandle(Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;I)I

    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    const-string v3, "FacePartsDetectionIMP"

    const-string v4, "SetPositionFromHandle failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetection:Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetection;->detect(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;)I

    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    const-string v3, "FacePartsDetectionIMP"

    const-string v4, "face parts detect failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_3
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getResult()Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionIMP;->mDetectionResult:Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;

    return-object v0
.end method
