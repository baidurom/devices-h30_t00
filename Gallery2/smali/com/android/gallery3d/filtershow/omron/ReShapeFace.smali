.class public final Lcom/android/gallery3d/filtershow/omron/ReShapeFace;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "ReShapeFace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native Activate(J)I
.end method

.method private native Deactivate(J)I
.end method

.method private native GetRatio(J)I
.end method

.method private native IsActive(J)Z
.end method

.method private native IsApplicable(JLandroid/graphics/Bitmap;)Z
.end method

.method private native SetRatio(JI)I
.end method


# virtual methods
.method public activate(Lcom/android/gallery3d/filtershow/omron/ReShape;)I
    .locals 3
    .parameter "handle"

    .prologue
    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 v2, -0x7

    .line 14
    :goto_0
    return v2

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 14
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeFace;->Activate(J)I

    move-result v2

    goto :goto_0
.end method

.method public deactivate(Lcom/android/gallery3d/filtershow/omron/ReShape;)I
    .locals 3
    .parameter "handle"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 21
    const/4 v2, -0x7

    .line 24
    :goto_0
    return v2

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 24
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeFace;->Deactivate(J)I

    move-result v2

    goto :goto_0
.end method

.method public getRatio(Lcom/android/gallery3d/filtershow/omron/ReShape;)I
    .locals 3
    .parameter "handle"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 61
    const/4 v2, -0x7

    .line 64
    :goto_0
    return v2

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 64
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeFace;->GetRatio(J)I

    move-result v2

    goto :goto_0
.end method

.method public isActive(Lcom/android/gallery3d/filtershow/omron/ReShape;)Z
    .locals 3
    .parameter "handle"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 31
    const/4 v2, 0x0

    .line 34
    :goto_0
    return v2

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 34
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeFace;->IsActive(J)Z

    move-result v2

    goto :goto_0
.end method

.method public isApplicable(Lcom/android/gallery3d/filtershow/omron/ReShape;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "handle"
    .parameter "bitmap"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 44
    .local v0, hRS:J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/gallery3d/filtershow/omron/ReShapeFace;->IsApplicable(JLandroid/graphics/Bitmap;)Z

    move-result v2

    goto :goto_0
.end method

.method public setRatio(Lcom/android/gallery3d/filtershow/omron/ReShape;I)I
    .locals 3
    .parameter "handle"
    .parameter "nRatio"

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 51
    const/4 v2, -0x7

    .line 54
    :goto_0
    return v2

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 54
    .local v0, hRS:J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/gallery3d/filtershow/omron/ReShapeFace;->SetRatio(JI)I

    move-result v2

    goto :goto_0
.end method
