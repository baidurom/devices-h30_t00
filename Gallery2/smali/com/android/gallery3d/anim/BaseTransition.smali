.class public abstract Lcom/android/gallery3d/anim/BaseTransition;
.super Ljava/lang/Object;
.source "BaseTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    }
.end annotation


# static fields
.field public static final LAYOUT_FRAME:I = 0x1

.field public static final LAYOUT_LINEAR:I = 0x0

.field private static final NONZERO_EPSILON:F = 0.0010f

.field public static final ORIENTATION_HORIZENTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BaseTransition"


# instance fields
.field mAlphaMode:Z

.field mAnimationType:Ljava/lang/String;

.field mBreakTimes:I

.field mOrientation:I

.field mRectOld:Landroid/graphics/Rect;

.field public mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mAlphaMode:Z

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mOrientation:I

    .line 35
    iput-object v2, p0, Lcom/android/gallery3d/anim/BaseTransition;->mRectOld:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    .line 164
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mBreakTimes:I

    .line 289
    iput-object v2, p0, Lcom/android/gallery3d/anim/BaseTransition;->mAnimationType:Ljava/lang/String;

    return-void
.end method

.method private static nonzero(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMatrix3D()V
    .locals 13

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 230
    iget-object v12, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    .line 231
    .local v12, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    iget-boolean v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 239
    iget-object v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    iget v2, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    iget v4, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v4

    iget v4, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    iget v6, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    add-float/2addr v4, v6

    iget v6, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotZ:F

    iget v7, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationZ:F

    add-float/2addr v6, v7

    invoke-static {v0, v1, v2, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 245
    iget v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    iget v2, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 252
    :cond_0
    :goto_0
    iget-object v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    iget v2, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    iget v4, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotZ:F

    neg-float v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 256
    iget-object v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    iget v2, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    iget v3, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    iget v4, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 258
    :cond_1
    return-void

    .line 247
    :cond_2
    iget v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    .line 248
    iget-object v6, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    iget v8, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationX:F

    move v7, v1

    move v9, v5

    move v10, v3

    move v11, v3

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 249
    :cond_3
    iget v0, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 250
    iget-object v6, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    iget v8, v12, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    move v7, v1

    move v9, v3

    move v10, v5

    move v11, v3

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mAnimationType:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakOrder(IF)I
    .locals 0
    .parameter "j"
    .parameter "scrollProgress"

    .prologue
    .line 271
    return p1
.end method

.method public getBreakTimes()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mBreakTimes:I

    return v0
.end method

.method public getDrawingOrder(IIIF)I
    .locals 0
    .parameter "childCount"
    .parameter "i"
    .parameter "part"
    .parameter "scrollProgress"

    .prologue
    .line 268
    return p2
.end method

.method public getTransformation(IZZFLandroid/view/View;Landroid/view/View;I)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    .locals 2
    .parameter "part"
    .parameter "isOverScrollFirst"
    .parameter "isOverScrollLast"
    .parameter "scrollProgress"
    .parameter "parent"
    .parameter "child"
    .parameter "pageSpacing"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    #calls: Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->clearDirty()V
    invoke-static {v0}, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->access$000(Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;)V

    .line 172
    invoke-virtual {p0, p4}, Lcom/android/gallery3d/anim/BaseTransition;->transform(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition;->updateMatrix3D()V

    .line 177
    iget-boolean v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mAlphaMode:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    goto :goto_0
.end method

.method public getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    .locals 2
    .parameter "scrollProgress"
    .parameter "targetRt"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    #calls: Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->clearDirty()V
    invoke-static {v0}, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->access$000(Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;)V

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/anim/BaseTransition;->transform(FLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition;->updateMatrix3D()V

    .line 194
    iget-boolean v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mAlphaMode:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mTransformationInfo:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    goto :goto_0
.end method

.method public isHorizental()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/android/gallery3d/anim/BaseTransition;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphaMode(Z)V
    .locals 0
    .parameter "useAlpha"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mAlphaMode:Z

    .line 217
    return-void
.end method

.method public setOldRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rt"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mRectOld:Landroid/graphics/Rect;

    .line 213
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 220
    iput p1, p0, Lcom/android/gallery3d/anim/BaseTransition;->mOrientation:I

    .line 221
    return-void
.end method

.method public transform(F)Z
    .locals 1
    .parameter "scrollProgress"

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public transform(FLandroid/graphics/Rect;)Z
    .locals 1
    .parameter "scrollProgress"
    .parameter "targetRt"

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method
