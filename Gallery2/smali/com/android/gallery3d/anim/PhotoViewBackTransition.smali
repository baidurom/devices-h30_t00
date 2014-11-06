.class public Lcom/android/gallery3d/anim/PhotoViewBackTransition;
.super Lcom/android/gallery3d/anim/BaseTransition;
.source "PhotoViewBackTransition.java"


# static fields
.field private static final PAGE_ANGLE:F = -45.0f

.field private static final PAGE_ANGLE_1:F = -45.0f

.field private static final PAGE_ANGLE_2:F = 70.0f


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
    .locals 3
    .parameter "scrollProgress"
    .parameter "targetRect"

    .prologue
    const/4 v2, 0x1

    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/high16 v1, -0x3dcc

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v2, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v2, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 20
    return v2
.end method
