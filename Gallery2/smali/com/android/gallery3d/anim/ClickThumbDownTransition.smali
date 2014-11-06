.class public Lcom/android/gallery3d/anim/ClickThumbDownTransition;
.super Lcom/android/gallery3d/anim/BaseTransition;
.source "ClickThumbDownTransition.java"


# static fields
.field private static final PAGE_ANGLE:F = 21.0f

.field private static final TRANSITION_SCALE_FACTOR:F = 0.87f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(FLandroid/graphics/Rect;)Z
    .locals 5
    .parameter "scrollProgress"
    .parameter "targetRect"

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x4000

    const v3, 0x3d851eb8

    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/high16 v1, 0x41a8

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    .line 17
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const v1, -0x41fae148

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget-object v1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iget v1, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v4, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 23
    return v4
.end method
