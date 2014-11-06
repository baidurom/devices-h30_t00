.class public final Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "SmartSkinSmooth.java"


# static fields
.field public static final SS_SMOOTH_MODE_MAXNUM:I = 0x1

.field public static final SS_SMOOTH_MODE_OFF:I = -0x1

.field public static final SS_SMOOTH_MODE_SMOOTH:I


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

.method private native GetMode(J)I
.end method

.method private native GetRatio(J)I
.end method

.method private native IsActive(J)Z
.end method

.method private native SetMode(JI)I
.end method

.method private native SetRatio(JI)I
.end method


# virtual methods
.method public activate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I
    .locals 2
    .parameter "ss"

    .prologue
    .line 7
    if-nez p1, :cond_0

    .line 9
    const/4 v0, -0x7

    .line 12
    :goto_0
    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->getOkaoHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 12
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->Activate(J)I

    move-result v0

    goto :goto_0
.end method

.method public deactivate(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)I
    .locals 2
    .parameter "ss"

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 19
    const/4 v0, -0x7

    .line 22
    :goto_0
    return v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->getOkaoHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 22
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->Deactivate(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->GetMode(J)I

    move-result v0

    return v0
.end method

.method public getRatio()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->GetRatio(J)I

    move-result v0

    return v0
.end method

.method public isActive(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)Z
    .locals 3
    .parameter "ss"

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
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->getOkaoHandle()J

    move-result-wide v0

    .line 32
    .local v0, hSS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->IsActive(J)Z

    move-result v2

    goto :goto_0
.end method

.method public setMode(I)I
    .locals 2
    .parameter "nMode"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->SetMode(JI)I

    move-result v0

    return v0
.end method

.method public setRatio(I)I
    .locals 2
    .parameter "nRatio"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinSmooth;->SetRatio(JI)I

    move-result v0

    return v0
.end method
