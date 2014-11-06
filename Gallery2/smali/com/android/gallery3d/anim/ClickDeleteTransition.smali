.class public Lcom/android/gallery3d/anim/ClickDeleteTransition;
.super Lcom/android/gallery3d/anim/BaseTransition;
.source "ClickDeleteTransition.java"


# static fields
.field private static final PAGE_ANGLE:I = 0x14

.field private static final SCALE_FACTOR:F = 0.7f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(FLandroid/graphics/Rect;)Z
    .locals 8
    .parameter "scrollProgress"
    .parameter "targetRect"

    .prologue
    const/4 v7, 0x1

    const v6, 0x3f333333

    const v5, 0x3f028f5c

    const v4, 0x3eae147b

    const v3, 0x3e99999a

    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput v6, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 17
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    .line 22
    cmpg-float v0, p1, v4

    if-gtz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/high16 v1, 0x41a0

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v7, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 35
    return v7

    .line 24
    :cond_0
    cmpg-float v0, v4, p1

    if-gez v0, :cond_1

    cmpg-float v0, p1, v5

    if-gtz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const v1, 0x40d9999a

    sub-float v2, p1, v4

    const/high16 v3, 0x4160

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float v2, p1, v5

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const v1, 0x408d70a4

    sub-float v2, p1, v5

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const v1, -0x3ffd70a4

    mul-float/2addr v1, p1

    const v2, 0x40028f5c

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v7, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    goto :goto_0
.end method
