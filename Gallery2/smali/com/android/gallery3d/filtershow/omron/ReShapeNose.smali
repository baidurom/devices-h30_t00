.class public final Lcom/android/gallery3d/filtershow/omron/ReShapeNose;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "ReShapeNose.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;-><init>()V

    return-void
.end method

.method private native Activate(J)I
.end method

.method private native Deactivate(J)I
.end method

.method private native IsActive(J)Z
.end method

.method private native SetRatio(JI)I
.end method


# virtual methods
.method public activate(Lcom/android/gallery3d/filtershow/omron/ReShape;)I
    .locals 3
    .parameter "handle"

    .prologue
    .line 7
    if-nez p1, :cond_0

    .line 9
    const/4 v2, -0x7

    .line 12
    :goto_0
    return v2

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 12
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeNose;->Activate(J)I

    move-result v2

    goto :goto_0
.end method

.method public deactivate(Lcom/android/gallery3d/filtershow/omron/ReShape;)I
    .locals 3
    .parameter "handle"

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 19
    const/4 v2, -0x7

    .line 22
    :goto_0
    return v2

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 22
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeNose;->Deactivate(J)I

    move-result v2

    goto :goto_0
.end method

.method public isActive(Lcom/android/gallery3d/filtershow/omron/ReShape;)Z
    .locals 3
    .parameter "handle"

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 29
    const/4 v2, 0x0

    .line 32
    :goto_0
    return v2

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 32
    .local v0, hRS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/ReShapeNose;->IsActive(J)Z

    move-result v2

    goto :goto_0
.end method

.method public setRatio(Lcom/android/gallery3d/filtershow/omron/ReShape;I)I
    .locals 3
    .parameter "handle"
    .parameter "nRatio"

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 39
    const/4 v2, -0x7

    .line 42
    :goto_0
    return v2

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/ReShape;->getOkaoHandle()J

    move-result-wide v0

    .line 42
    .local v0, hRS:J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/gallery3d/filtershow/omron/ReShapeNose;->SetRatio(JI)I

    move-result v2

    goto :goto_0
.end method
