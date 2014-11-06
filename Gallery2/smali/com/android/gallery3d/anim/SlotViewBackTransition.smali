.class public Lcom/android/gallery3d/anim/SlotViewBackTransition;
.super Lcom/android/gallery3d/anim/BaseTransition;
.source "SlotViewBackTransition.java"


# static fields
.field private static final PAGE_ANGLE_SMALL:F = 70.0f

.field private static final TRANSITION_SCALE_SMALL_FACTOR:F = 2.4f


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
    .locals 7
    .parameter "scrollProgress"
    .parameter "targetRect"

    .prologue
    const v6, 0x4019999a

    const/high16 v5, 0x3f80

    const v2, -0x404ccccc

    const/4 v4, 0x1

    const/high16 v3, 0x4000

    .line 10
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    mul-float v1, v2, p1

    add-float/2addr v1, v6

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    .line 11
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    mul-float v1, v2, p1

    add-float/2addr v1, v6

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v2, v2, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v2, v2, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/high16 v1, -0x3d74

    mul-float/2addr v1, p1

    const/high16 v2, 0x428c

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    .line 17
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    sub-float v1, v5, v1

    div-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    sub-float v1, v5, v1

    div-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput p1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v4, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 23
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v4, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 24
    return v4
.end method
