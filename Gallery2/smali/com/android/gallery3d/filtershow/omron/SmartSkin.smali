.class public final Lcom/android/gallery3d/filtershow/omron/SmartSkin;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "SmartSkin.java"


# static fields
.field public static final SS_AREA_ALL:I = -0x1

.field public static final SS_AREA_CHEST:I = 0x9

.field public static final SS_AREA_FACE:I = 0x0

.field public static final SS_AREA_FOREHEAD:I = 0x1

.field public static final SS_AREA_LEFTCHEEK:I = 0x5

.field public static final SS_AREA_LEFTEYE:I = 0x2

.field public static final SS_AREA_MAXNUM:I = 0xa

.field public static final SS_AREA_MOUTH:I = 0x7

.field public static final SS_AREA_NECK:I = 0x8

.field public static final SS_AREA_NOSE:I = 0x4

.field public static final SS_AREA_RIGHTCHEEK:I = 0x6

.field public static final SS_AREA_RIGHTEYE:I = 0x3

.field public static final SS_IMG_CBCRCBCR:I = 0x10

.field public static final SS_IMG_CRCBCRCB:I = 0x20

.field public static final SS_IMG_CXYXCXYX:I = 0x200

.field public static final SS_IMG_MAXNUM:I = 0x2

.field public static final SS_IMG_ORDER_DEFAULT:I = 0x111

.field public static final SS_IMG_Y0Y1Y2Y3:I = 0x1

.field public static final SS_IMG_Y1Y0Y3Y2:I = 0x2

.field public static final SS_IMG_Y3Y2Y1Y0:I = 0x3

.field public static final SS_IMG_YUV420SP:I = 0x1

.field public static final SS_IMG_YUV422:I = 0x0

.field public static final SS_IMG_YXCXYXCX:I = 0x100

.field public static final SS_MODE_FAST:I = 0x0

.field public static final SS_MODE_FINE:I = 0x1

.field public static final SS_MODE_MAXNUM:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native ClearPosition(J)I
.end method

.method private native CorrectBitmap(JLandroid/graphics/Bitmap;)I
.end method

.method private native CreateHandle(I)J
.end method

.method private native DeleteHandle(J)I
.end method

.method private native GetCorrectArea(JI)I
.end method

.method private native GetMaxFaceNum(J)I
.end method

.method private native GetMode(J)I
.end method

.method private native SetCorrectArea(JII)I
.end method

.method private native SetMode(JI)I
.end method

.method private native SetPosition(JLcom/android/gallery3d/filtershow/omron/SsPositionRect;)I
.end method

.method private native SetPositionByCenter(JLcom/android/gallery3d/filtershow/omron/SsPositionCenter;)I
.end method

.method private native SetPositionFromHandle(JJI)I
.end method

.method public static createHandle(I)Lcom/android/gallery3d/filtershow/omron/SmartSkin;
    .locals 5
    .parameter "nMaxFaceNum"

    .prologue
    .line 9
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/SmartSkin;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;-><init>()V

    .line 10
    .local v0, ss:Lcom/android/gallery3d/filtershow/omron/SmartSkin;
    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->CreateHandle(I)J

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
.method public native BreakSmartSkin()I
.end method

.method public clearPosition()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->ClearPosition(J)I

    move-result v0

    return v0
.end method

.method public correctBitmap(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "image"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->CorrectBitmap(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

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

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->DeleteHandle(J)I

    move-result v0

    .line 24
    iput-wide v3, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 26
    :cond_0
    return v0
.end method

.method public getCorrectArea(I)I
    .locals 2
    .parameter "nAreaIndex"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->GetCorrectArea(JI)I

    move-result v0

    return v0
.end method

.method public getMaxFaceNum()I
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->GetMaxFaceNum(J)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->GetMode(J)I

    move-result v0

    return v0
.end method

.method public setCorrectArea(II)I
    .locals 2
    .parameter "nAreaIndex"
    .parameter "nSize"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->SetCorrectArea(JII)I

    move-result v0

    return v0
.end method

.method public setMode(I)I
    .locals 2
    .parameter "nMode"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->SetMode(JI)I

    move-result v0

    return v0
.end method

.method public setPosition(Lcom/android/gallery3d/filtershow/omron/SsPositionRect;)I
    .locals 2
    .parameter "stPosition"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->SetPosition(JLcom/android/gallery3d/filtershow/omron/SsPositionRect;)I

    move-result v0

    return v0
.end method

.method public setPositionByCenter(Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;)I
    .locals 2
    .parameter "stPosition"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->SetPositionByCenter(JLcom/android/gallery3d/filtershow/omron/SsPositionCenter;)I

    move-result v0

    return v0
.end method

.method public setPositionFromHandle(JI)I
    .locals 6
    .parameter "hDtResult"
    .parameter "nIndex"

    .prologue
    .line 41
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->SetPositionFromHandle(JJI)I

    move-result v0

    return v0
.end method
