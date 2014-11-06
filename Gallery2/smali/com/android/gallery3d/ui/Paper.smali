.class Lcom/android/gallery3d/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final ROTATE_FACTOR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Paper"


# instance fields
.field private mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

.field private mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

.field private mHeight:I

.field private mIsWide:Z

.field private mMatrix:[F

.field private mWidth:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "bWide"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    .line 32
    new-instance v0, Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    .line 38
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    .line 39
    return-void
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public edgeReached(F)V
    .locals 2
    .parameter "velocity"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 60
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    .line 65
    :goto_1
    return-void

    .line 58
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    goto :goto_1
.end method

.method public getTransform(Landroid/graphics/Rect;F)[F
    .locals 14
    .parameter "rect"
    .parameter "scroll"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v8

    .line 84
    .local v8, left:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v10

    .line 85
    .local v10, right:F
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v11, v0, p2

    .line 89
    .local v11, screenX:F
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    :goto_1
    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    add-float v13, v11, v0

    .line 90
    .local v13, x:F
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    :goto_2
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v9, v0, 0x2

    .line 91
    .local v9, range:I
    int-to-float v0, v9

    sub-float/2addr v0, v13

    mul-float/2addr v0, v8

    mul-float v1, v13, v10

    sub-float/2addr v0, v1

    int-to-float v1, v9

    div-float v12, v0, v1

    .line 95
    .local v12, t:F
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    neg-float v2, v12

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/high16 v1, -0x3dcc

    mul-float v7, v0, v1

    .line 97
    .local v7, degrees:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 99
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    move v2, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 104
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    return-object v0

    .line 85
    .end local v7           #degrees:F
    .end local v9           #range:I
    .end local v11           #screenX:F
    .end local v12           #t:F
    .end local v13           #x:F
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float v11, v0, p2

    goto/16 :goto_0

    .line 89
    .restart local v11       #screenX:F
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    goto/16 :goto_1

    .line 90
    .restart local v13       #x:F
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    goto :goto_2

    .line 102
    .restart local v7       #degrees:F
    .restart local v9       #range:I
    .restart local v12       #t:F
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    neg-float v2, v7

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_3
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->onRelease()V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/EdgeAnimation;->onRelease()V

    .line 70
    return-void
.end method

.method public overScroll(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/Paper;->mIsWide:Z

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 47
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/android/gallery3d/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onPull(F)V

    .line 52
    :goto_1
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/EdgeAnimation;->onPull(F)V

    goto :goto_1
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/gallery3d/ui/Paper;->mWidth:I

    .line 79
    iput p2, p0, Lcom/android/gallery3d/ui/Paper;->mHeight:I

    .line 80
    return-void
.end method
