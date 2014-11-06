.class public Lcom/android/gallery3d/anim/ClickScaleTransition;
.super Lcom/android/gallery3d/anim/BaseTransition;
.source "ClickScaleTransition.java"


# static fields
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
    .locals 5
    .parameter "scrollProgress"
    .parameter "targetRect"

    .prologue
    const/4 v4, 0x1

    const v3, 0x3e99999a

    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const v1, -0x41666666

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

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

    mul-float/2addr v1, p1

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

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    iput-boolean v4, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 20
    return v4
.end method
