.class public final Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;
.super Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.source "SmartSkinColor.java"


# static fields
.field public static final SS_COLOR_MODE_BRIGHT:I = 0x0

.field public static final SS_COLOR_MODE_COLOR:I = 0x2

.field public static final SS_COLOR_MODE_DARKNESS:I = 0x1

.field public static final SS_COLOR_MODE_MAXNUM:I = 0x3

.field public static final SS_COLOR_MODE_OFF:I = -0x1


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

.method private native SetTargetColor(JIII)I
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

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->Activate(J)I

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

    .line 23
    :goto_0
    return v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->getOkaoHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    .line 23
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->Deactivate(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->GetMode(J)I

    move-result v0

    return v0
.end method

.method public getRatio()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->GetRatio(J)I

    move-result v0

    return v0
.end method

.method public isActive(Lcom/android/gallery3d/filtershow/omron/SmartSkin;)Z
    .locals 3
    .parameter "ss"

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 33
    :goto_0
    return v2

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkin;->getOkaoHandle()J

    move-result-wide v0

    .line 33
    .local v0, hSS:J
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->IsActive(J)Z

    move-result v2

    goto :goto_0
.end method

.method public setMode(I)I
    .locals 2
    .parameter "nMode"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->SetMode(JI)I

    move-result v0

    return v0
.end method

.method public setRatio(I)I
    .locals 2
    .parameter "nRatio"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->SetRatio(JI)I

    move-result v0

    return v0
.end method

.method public setTargetColor(III)I
    .locals 6
    .parameter "nColorR"
    .parameter "nColorG"
    .parameter "nColorB"

    .prologue
    .line 58
    iget-wide v1, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/omron/SmartSkinColor;->SetTargetColor(JIII)I

    move-result v0

    return v0
.end method
