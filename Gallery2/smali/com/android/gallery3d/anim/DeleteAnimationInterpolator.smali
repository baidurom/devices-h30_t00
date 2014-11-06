.class public Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;
.super Ljava/lang/Object;
.source "DeleteAnimationInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final CONTROL_POINT1X:F = 0.56f

.field private static final CONTROL_POINT1Y:F = 0.78f

.field private static final CONTROL_POINT2X:F = 0.59f

.field private static final CONTROL_POINT2Y:F = 0.24f

.field public static final DEBUG:Z = false

.field static final MAX_RESOLUTION:J = 0xfa0L

.field static final SEARCH_STEP:F = 2.5E-4f

.field private static final TAG:Ljava/lang/String; = "DeleteAnimationInterpolator"


# instance fields
.field mControlPoint1x:F

.field mControlPoint1y:F

.field mControlPoint2x:F

.field mControlPoint2y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1x:F

    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1y:F

    .line 43
    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2x:F

    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2y:F

    .line 52
    const v0, 0x3f0f5c29

    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1x:F

    .line 53
    const v0, 0x3f47ae14

    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1y:F

    .line 54
    const v0, 0x3f170a3d

    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2x:F

    .line 55
    const v0, 0x3e75c28f

    iput v0, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2y:F

    .line 59
    return-void
.end method

.method private getCubicBezierX(F)F
    .locals 4
    .parameter "t"

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x3f80

    .line 83
    sub-float v0, v2, p1

    mul-float/2addr v0, v3

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1x:F

    mul-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method BinarySearch(F)J
    .locals 12
    .parameter "key"

    .prologue
    const-wide/16 v10, 0x1

    .line 104
    const-wide/16 v3, 0x0

    .line 105
    .local v3, low:J
    const-wide/16 v1, 0xfa0

    .line 108
    .local v1, high:J
    const/4 v0, 0x0

    .line 110
    .local v0, approximation:F
    :goto_0
    cmp-long v7, v3, v1

    if-gtz v7, :cond_1

    .line 111
    add-long v7, v3, v1

    const/4 v9, 0x1

    ushr-long v5, v7, v9

    .line 112
    .local v5, middle:J
    const v7, 0x3983126f

    long-to-float v8, v5

    mul-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->getCubicBezierX(F)F

    move-result v0

    .line 114
    cmpg-float v7, v0, p1

    if-gez v7, :cond_0

    .line 115
    add-long v3, v5, v10

    goto :goto_0

    .line 116
    :cond_0
    cmpl-float v7, v0, p1

    if-lez v7, :cond_2

    .line 117
    sub-long v1, v5, v10

    goto :goto_0

    .end local v5           #middle:J
    :cond_1
    move-wide v5, v3

    .line 123
    :cond_2
    return-wide v5
.end method

.method protected getCubicBezierY(F)F
    .locals 4
    .parameter "t"

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x3f80

    .line 94
    sub-float v0, v2, p1

    mul-float/2addr v0, v3

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1y:F

    mul-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 3
    .parameter "input"

    .prologue
    .line 73
    const v0, 0x3983126f

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->BinarySearch(F)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->getCubicBezierY(F)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DeleteAnimationInterpolator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mControlPoint1x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mControlPoint1y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint1y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mControlPoint2x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mControlPoint2y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;->mControlPoint2y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
