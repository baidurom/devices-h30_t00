.class public Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;
.super Ljava/lang/Object;
.source "FaceDetectionIMP.java"


# static fields
.field private static final MAXFACESIZE:I = 0x780

.field private static final MAX_FACE_NUMBER:I = 0xa

.field private static final MINFACESIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FaceDetectionIMP"


# instance fields
.field private mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

.field private mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

.field private mFaceNum:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceNum:I

    .line 17
    invoke-static {}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->create()Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    if-nez v0, :cond_1

    .line 19
    const-string v0, "FaceDetectionIMP"

    const-string v1, "create face detection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    const/16 v1, 0x14

    const/16 v2, 0x780

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->setFaceSizeRange(II)I

    .line 23
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->setMode(I)I

    .line 24
    const/16 v0, 0xa

    invoke-static {v0, v3}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->createResult(II)Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->delete()I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    .line 28
    const-string v0, "FaceDetectionIMP"

    const-string v1, "create face detaection result failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->deleteResult()I

    .line 44
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->delete()I

    .line 48
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    .line 50
    :cond_1
    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;)I
    .locals 5
    .parameter "source"

    .prologue
    const/4 v1, -0x1

    .line 54
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    const-string v2, "FaceDetectionIMP"

    const-string v3, "detect failed:not init"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return v1

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->clearResult()I

    .line 59
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->detection(Landroid/graphics/Bitmap;ILcom/android/gallery3d/filtershow/omron/FaceDetectionResult;)I

    move-result v0

    .line 60
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 61
    const-string v2, "FaceDetectionIMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect failed result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;->getFaceCount()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceNum:I

    .line 65
    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceNum:I

    if-gtz v2, :cond_3

    .line 66
    const-string v2, "FaceDetectionIMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFaceCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceNum:I

    goto :goto_0
.end method

.method public getResult()Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetectionResult:Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    return-object v0
.end method

.method public setFaceSize(II)Z
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 34
    const/4 v0, -0x1

    .line 35
    .local v0, result:I
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetection;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceDetection;->setFaceSizeRange(II)I

    move-result v0

    .line 38
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
