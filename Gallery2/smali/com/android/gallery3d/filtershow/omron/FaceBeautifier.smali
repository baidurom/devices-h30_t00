.class public Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;
.super Ljava/lang/Object;
.source "FaceBeautifier.java"


# static fields
.field private static final AREA_CHEST:I = 0x0

.field private static final AREA_FACE:I = 0x64

.field private static final AREA_NECK:I = 0x0

.field public static final COLOR:I = 0x1

.field private static final MAX_FACE_NUMBER:I = 0xa

.field public static final SMOOTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FaceBeautifier"


# instance fields
.field private mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

.field private mFaceNum:I

.field private mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

.field private mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

.field private mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    .line 23
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->createHandle(I)Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    .line 24
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->destroy()V

    .line 26
    const-string v0, "FaceBeautifier"

    const-string v1, "create mSmartSkin failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->setMode(I)I

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    const/16 v1, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->setCorrectArea(II)I

    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->setCorrectArea(II)I

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->setCorrectArea(II)I

    .line 34
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->activate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->setMode(I)I

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->setRatio(I)I

    .line 38
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->activate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->setMode(I)I

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->setRatio(I)I

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    const/16 v1, 0xfe

    const/16 v2, 0xef

    const/16 v3, 0xea

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->setTargetColor(III)I

    goto :goto_0
.end method

.method private faceCorrect(Landroid/graphics/Bitmap;)I
    .locals 4
    .parameter "source"

    .prologue
    .line 64
    iget v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceNum:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->getResult()Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    move-result-object v3

    if-nez v3, :cond_1

    .line 65
    :cond_0
    const/4 v3, -0x1

    .line 72
    :goto_0
    return v3

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->getResult()Lcom/android/gallery3d/filtershow/omron/FaceDetectionResult;

    move-result-object v3

    iget-wide v0, v3, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 68
    .local v0, hDtResult:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceNum:I

    if-ge v2, v3, :cond_2

    .line 69
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->setPositionFromHandle(JI)I

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->correctBitmap(Landroid/graphics/Bitmap;)I

    .line 72
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->destroy()V

    .line 90
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->deleteHandle()I

    .line 94
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    .line 96
    :cond_1
    return-void
.end method

.method public faceColor(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "source"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->activate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->deactivate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->faceCorrect(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public faceDetect(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "source"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->detect(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceNum:I

    .line 57
    iget v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mFaceNum:I

    if-gtz v0, :cond_0

    .line 58
    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public faceSmooth(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "source"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->activate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkin:Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->deactivate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->faceCorrect(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setRatio(II)I
    .locals 1
    .parameter "ratio"
    .parameter "type"

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinSmooth:Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->setRatio(I)I

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifier;->mSmartSkinColor:Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->setRatio(I)I

    move-result v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, -0x3

    goto :goto_0
.end method
