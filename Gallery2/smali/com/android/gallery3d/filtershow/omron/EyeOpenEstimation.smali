.class public final Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "EyeOpenEstimation.java"


# static fields
.field public static final DETAIL_FEATURE_KIND_MAX:I = 0x26

.field public static final EO_PARTS_ALL:I = 0x7

.field public static final EO_PARTS_LEFTEYE:I = 0x1

.field public static final EO_PARTS_MOUTH:I = 0x4

.field public static final EO_PARTS_NOTHING:I = 0x0

.field public static final EO_PARTS_RIGHTEYE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native CreateEyeOpen()J
.end method

.method private native DeleteEyeOpen(J)I
.end method

.method private native EyeOpen(JLandroid/graphics/Bitmap;)I
.end method

.method private native SetEoParts(JI)I
.end method

.method private native SetEoPoint(JJ)I
.end method

.method public static createEyeOpen()Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;-><init>()V

    .line 10
    .local v0, eyeOpenEstimation:Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;
    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;->CreateEyeOpen()J

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
.method public deleteEyeOpen()I
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

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;->DeleteEyeOpen(J)I

    move-result v0

    .line 24
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 26
    :cond_0
    return v0
.end method

.method public eyeOpen(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;->EyeOpen(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setEoParts(I)I
    .locals 2
    .parameter "nParts"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;->SetEoParts(JI)I

    move-result v0

    return v0
.end method

.method public setEoPoint(Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;)I
    .locals 4
    .parameter "result"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v2, -0x7

    .line 35
    :goto_0
    return v2

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/FacePartsDetectionResult;->getOkaoHandle()J

    move-result-wide v0

    .line 35
    .local v0, hPtResult:J
    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/omron/EyeOpenEstimation;->SetEoPoint(JJ)I

    move-result v2

    goto :goto_0
.end method
