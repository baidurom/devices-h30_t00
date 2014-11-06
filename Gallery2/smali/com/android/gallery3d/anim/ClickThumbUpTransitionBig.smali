.class public Lcom/android/gallery3d/anim/ClickThumbUpTransitionBig;
.super Lcom/android/gallery3d/anim/BaseTransition;
.source "ClickThumbUpTransitionBig.java"


# static fields
.field private static final PAGE_ANGLE_BIG:I = 0x6e

.field private static final TRANSITION_SCALE_BIG_FACTOR:F = 0.45f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(FLandroid/graphics/Rect;)Z
    .locals 10
    .parameter "scrollProgress"
    .parameter "targetRect"

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x4000

    .line 11
    iget-object v3, p0, Lcom/android/gallery3d/anim/BaseTransition;->mRectOld:Landroid/graphics/Rect;

    .line 12
    .local v3, thumbnailRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mRectOld:Landroid/graphics/Rect;

    if-nez v6, :cond_0

    .line 13
    const/4 v5, 0x0

    .line 38
    :goto_0
    return v5

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v4, v6

    .line 17
    .local v4, tw:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v2, v6

    .line 18
    .local v2, th:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v0, v6

    .line 19
    .local v0, cxOld:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v1, v6

    .line 21
    .local v1, cyOld:F
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const v7, 0x3ee66666

    const v8, 0x3f0ccccd

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    .line 22
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v7, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v7, v7, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    .line 24
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v7, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v7, v7, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    mul-float/2addr v7, v4

    div-float/2addr v7, v9

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    .line 25
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v7, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v7, v7, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    mul-float/2addr v7, v2

    div-float/2addr v7, v9

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    .line 26
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/high16 v7, 0x42dc

    const/high16 v8, 0x3f80

    sub-float/2addr v8, p1

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    .line 28
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    div-float v7, v4, v9

    sub-float/2addr v7, v0

    mul-float/2addr v7, p1

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v8, v8, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    mul-float/2addr v8, v4

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 30
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    div-float v7, v2, v9

    sub-float/2addr v7, v1

    mul-float/2addr v7, p1

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v8, v8, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    mul-float/2addr v8, v2

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 34
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput p1, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    .line 36
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v5, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 37
    iget-object v6, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v5, v6, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    goto :goto_0
.end method
