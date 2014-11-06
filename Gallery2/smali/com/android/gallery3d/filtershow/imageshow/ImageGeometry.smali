.class public abstract Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageGeometry"

.field protected static final MAX_STRAIGHTEN_ANGLE:F = 45.0f

.field protected static final MIN_STRAIGHTEN_ANGLE:F = -45.0f

.field public static final SHADOW_ALAPHA:I = 0x66


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHasDrawn:Z

.field private mLocalDisplayBounds:Landroid/graphics/RectF;

.field private mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field protected mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

.field protected mTouchCenterX:F

.field protected mTouchCenterY:F

.field private mVisibilityGained:Z

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 54
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 55
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 56
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 57
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 63
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 54
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 55
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 56
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 57
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 63
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 69
    return-void
.end method

.method protected static angleFor(FF)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 81
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calculateLocalScalingFactorAndOffset()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 116
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    if-nez v5, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 119
    .local v2, imageBounds:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 120
    .local v4, imageWidth:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 121
    .local v3, imageHeight:F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 122
    .local v1, displayWidth:F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 124
    .local v0, displayHeight:F
    div-float v5, v1, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    .line 125
    div-float v5, v0, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    .line 126
    sub-float v5, v0, v3

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 127
    sub-float v5, v1, v4

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    goto :goto_0
.end method

.method protected static drawClosedPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)Landroid/graphics/Path;
    .locals 3
    .parameter "canvas"
    .parameter "paint"
    .parameter "points"

    .prologue
    .line 250
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 251
    .local v0, crop:Landroid/graphics/Path;
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x3

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    const/4 v1, 0x4

    aget v1, p2, v1

    const/4 v2, 0x5

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    const/4 v1, 0x6

    aget v1, p2, v1

    const/4 v2, 0x7

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 256
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    return-object v0
.end method

.method protected static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 21
    .parameter "canvas"
    .parameter "p"
    .parameter "innerBounds"
    .parameter "outerBounds"
    .parameter "rotation"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 514
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 516
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v19, v4, v7

    .line 517
    .local v19, x:F
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v4, v7

    .line 518
    .local v20, y:F
    mul-float v4, v19, v19

    mul-float v7, v20, v20

    add-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x4000

    div-float v18, v4, v7

    .line 519
    .local v18, longest:F
    sub-float v5, p5, v18

    .line 520
    .local v5, minX:F
    add-float v15, p5, v18

    .line 521
    .local v15, maxX:F
    sub-float v6, p6, v18

    .line 522
    .local v6, minY:F
    add-float v11, p6, v18

    .line 523
    .local v11, maxY:F
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 524
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v7, p0

    move v8, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v7, p0

    move v10, v15

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move-object/from16 v12, p0

    move v14, v6

    move-object/from16 v17, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 529
    move/from16 v0, p4

    neg-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 531
    return-void
.end method

.method protected static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .parameter "r"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v7, 0x4000

    .line 261
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 262
    .local v4, scale:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 263
    .local v0, centX:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 264
    .local v1, centY:F
    mul-float v5, v4, p1

    div-float v3, v5, v7

    .line 265
    .local v3, hw:F
    mul-float v5, v4, p2

    div-float v2, v5, v7

    .line 266
    .local v2, hh:F
    sub-float v5, v0, v3

    sub-float v6, v1, v2

    add-float v7, v0, v3

    add-float v8, v1, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 268
    return-void
.end method

.method protected static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 3
    .parameter "r"

    .prologue
    .line 229
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 235
    .local v0, corners:[F
    return-object v0
.end method

.method protected static getEdgePoints(Landroid/graphics/RectF;[F)V
    .locals 5
    .parameter "imageBound"
    .parameter "array"

    .prologue
    .line 241
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 247
    :cond_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 244
    aget v1, p1, v0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 245
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 243
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected static getNewHeightForWidthAspect(FFF)F
    .locals 1
    .parameter "width"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 271
    mul-float v0, p0, p2

    div-float/2addr v0, p1

    return v0
.end method

.method protected static getNewWidthForHeightAspect(FFF)F
    .locals 1
    .parameter "height"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 275
    mul-float v0, p0, p1

    div-float/2addr v0, p2

    return v0
.end method

.method public static getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 32
    .parameter "imageRect"
    .parameter "straightenAngle"

    .prologue
    .line 385
    move/from16 v8, p1

    .line 386
    .local v8, deg:F
    const/16 v26, 0x0

    cmpg-float v26, v8, v26

    if-gez v26, :cond_0

    .line 387
    neg-float v8, v8

    .line 389
    :cond_0
    float-to-double v0, v8

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 390
    .local v3, a:D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 391
    .local v21, sina:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 393
    .local v6, cosa:D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 394
    .local v19, rw:D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 395
    .local v16, rh:D
    mul-double v26, v16, v16

    mul-double v28, v19, v21

    mul-double v30, v16, v6

    add-double v28, v28, v30

    div-double v9, v26, v28

    .line 396
    .local v9, h1:D
    mul-double v26, v16, v19

    mul-double v28, v19, v6

    mul-double v30, v16, v21

    add-double v28, v28, v30

    div-double v11, v26, v28

    .line 397
    .local v11, h2:D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 398
    .local v13, hh:D
    mul-double v26, v13, v19

    div-double v24, v26, v16

    .line 400
    .local v24, ww:D
    sub-double v26, v19, v24

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 401
    .local v15, left:F
    sub-double v26, v16, v13

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    .line 402
    .local v23, top:F
    float-to-double v0, v15

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v18, v0

    .line 403
    .local v18, right:F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v13

    move-wide/from16 v0, v26

    double-to-float v5, v0

    .line 405
    .local v5, bottom:F
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v26
.end method

.method private setupLocalDisplayBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 77
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 78
    return-void
.end method

.method private shadowForUnStraightenRect(IILandroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "straightenMatrix"
    .parameter "straightenRect"

    .prologue
    const/4 v5, 0x0

    .line 555
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 556
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 559
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 562
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 563
    .local v2, inverseM:Landroid/graphics/Matrix;
    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    const-string v3, "ImageGeometry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error matrix = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x0

    .line 573
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 568
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 570
    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p4, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 571
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 572
    const/16 v3, 0xa0

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_0
.end method

.method protected static snappedAngle(F)I
    .locals 3
    .parameter "angle"

    .prologue
    const/high16 v2, 0x42b4

    .line 85
    rem-float v1, p0, v2

    .line 86
    .local v1, remainder:F
    div-float v2, p0, v2

    float-to-int v0, v2

    .line 87
    .local v0, current:I
    const/high16 v2, -0x3dcc

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 88
    add-int/lit8 v0, v0, -0x1

    .line 92
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x5a

    return v2

    .line 89
    :cond_1
    const/high16 v2, 0x4234

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeScale(FF)F
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 111
    .local v1, imageWidth:F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 112
    .local v0, imageHeight:F
    invoke-static {v1, v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v2

    return v2
.end method

.method protected constrainedRotation(F)I
    .locals 3
    .parameter "rotation"

    .prologue
    .line 192
    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    const/high16 v2, 0x42b4

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 193
    .local v0, r:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 194
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method protected cropBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 465
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 466
    .local v1, m:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 467
    return-object v0
.end method

.method protected drawCrop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->cropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 473
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 474
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 476
    return-void
.end method

.method protected drawCropSafe(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v2

    .line 480
    .local v2, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 481
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    .line 483
    .local v0, corners:[F
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 484
    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawClosedPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)Landroid/graphics/Path;

    .line 491
    .end local v0           #corners:[F
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 487
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 488
    .local v3, path:Landroid/graphics/Path;
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 489
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "paint"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 430
    .local v1, scale:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 431
    .local v3, yoff:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 432
    .local v2, xoff:F
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryUIMatrix(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 433
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 434
    return-void
.end method

.method protected drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "paint"
    .parameter "m"

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 424
    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 426
    return-void
.end method

.method protected drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 7
    .parameter "canvas"
    .parameter "p"
    .parameter "innerBounds"

    .prologue
    const/4 v2, 0x0

    .line 506
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 507
    .local v3, display:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    .line 509
    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "canvas"
    .parameter "image"

    .prologue
    .line 551
    return-void
.end method

.method protected drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 446
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 447
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 448
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 449
    return-void
.end method

.method protected drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 17
    .parameter "canvas"
    .parameter "photo"
    .parameter "p"

    .prologue
    .line 577
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 579
    .local v14, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v10

    .line 580
    .local v10, cropBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v15

    .line 582
    .local v15, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v15

    .line 586
    :cond_0
    invoke-static {v10, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 587
    .local v4, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v14, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 588
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 591
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v11

    .line 594
    .local v11, m:Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v12

    .line 596
    .local v12, m1:Landroid/graphics/Matrix;
    invoke-virtual {v12, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 597
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 598
    .local v13, path:Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 600
    invoke-virtual {v11, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v11, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->shadowForUnStraightenRect(IILandroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 606
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 609
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 613
    :cond_1
    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 615
    const/high16 v5, 0x4000

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 616
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 617
    return-object v4
.end method

.method protected drawTransformedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "paint"
    .parameter "clip"

    .prologue
    const/4 v1, 0x0

    .line 494
    const/16 v0, 0xff

    invoke-virtual {p3, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 495
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 496
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 498
    const/high16 v0, 0x4000

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 499
    invoke-virtual {p0, p1, p3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawCropSafe(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDefaultBackgroundColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->unrotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 503
    return-void
.end method

.method protected drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 17
    .parameter "canvas"
    .parameter "photo"
    .parameter "p"

    .prologue
    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 622
    .local v14, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 623
    .local v9, cropBounds:Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 624
    .local v12, imageWidth:F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 625
    .local v11, imageHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 627
    .local v15, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 631
    :cond_0
    invoke-static {v9, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 632
    .local v4, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v14, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 633
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 636
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v13

    .line 638
    .local v13, m1:Landroid/graphics/Matrix;
    const/4 v5, 0x2

    new-array v10, v5, [F

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v10, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v10, v5

    .line 641
    .local v10, cropCenter:[F
    invoke-virtual {v13, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 642
    invoke-static {v13, v10, v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v13, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 644
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 646
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 648
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 651
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 653
    const/4 v5, 0x0

    aget v5, v8, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 656
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method protected getCurrentTouchAngle()F
    .locals 8

    .prologue
    .line 96
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 97
    const/4 v6, 0x0

    .line 106
    :goto_0
    return v6

    .line 99
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v2, v6, v7

    .line 100
    .local v2, dX1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v4, v6, v7

    .line 101
    .local v4, dY1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v3, v6, v7

    .line 102
    .local v3, dX2:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v5, v6, v7

    .line 104
    .local v5, dY2:F
    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v0

    .line 105
    .local v0, angleA:F
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v1

    .line 106
    .local v1, angleB:F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b4

    rem-float/2addr v6, v7

    goto :goto_0
.end method

.method protected getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;
    .locals 11
    .parameter "r"
    .parameter "onlyRotate"

    .prologue
    const/high16 v10, 0x4000

    .line 409
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 410
    .local v7, pbounds:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 412
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    const/high16 v6, 0x42b4

    div-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 416
    .local v5, yoff:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 417
    .local v4, xoff:F
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float v1, v0, v6

    .line 418
    .local v1, w:F
    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float v2, v0, v6

    .line 419
    .local v2, h:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalCropBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalDisplayBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPhotoBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalRotation()F
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalScale()F
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method protected getLocalStraighten()F
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-string v0, "Geometry"

    return-object v0
.end method

.method protected getTotalLocalRotation()F
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDirtyGeometryFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 537
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->clearDirtyGeometryFlag()V

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->requestFilteredImages()V

    .line 540
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 546
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onSizeChanged(IIII)V

    .line 306
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setupLocalDisplayBounds(Landroid/graphics/RectF;)V

    .line 307
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setNoAction()V

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 329
    const/4 v0, 0x1

    return v0

    .line 313
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    goto :goto_0

    .line 316
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 317
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    goto :goto_0

    .line 320
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 280
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onVisibilityChanged(Landroid/view/View;I)V

    .line 281
    if-nez p2, :cond_0

    .line 282
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 284
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 285
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->gainedVisibility()V

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->lostVisibility()V

    .line 290
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->resetParameter()V

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalRotation(F)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalStraighten(F)V

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 137
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 139
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 140
    return-void
.end method

.method public saveAndSetPreset()V
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 369
    .local v1, lastHistoryItem:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 371
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 382
    return-void

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 375
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 378
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    goto :goto_0
.end method

.method protected setActionDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 337
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    .line 338
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    .line 339
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 340
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 341
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->DOWN:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 342
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 346
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 347
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 348
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->UP:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 352
    return-void
.end method

.method protected setLocalCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 209
    return-void
.end method

.method protected setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setFlipType(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 217
    return-void
.end method

.method protected setLocalRotation(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 186
    return-void
.end method

.method protected setLocalScale(F)V
    .locals 1
    .parameter "s"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 174
    return-void
.end method

.method protected setLocalStraighten(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setStraightenRotation(F)V

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 204
    return-void
.end method

.method protected setNoAction()V
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 356
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method protected straightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 439
    .local v0, bounds:Landroid/graphics/RectF;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 440
    .local v1, m:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 441
    return-object v0
.end method

.method protected syncLocalToMasterGeometry()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 146
    return-void
.end method

.method protected unrotatedCropBounds()Landroid/graphics/RectF;
    .locals 10

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 453
    .local v7, bounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 454
    .local v9, pbounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v3

    .line 455
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 456
    .local v5, yoff:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 457
    .local v4, xoff:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v8

    .line 459
    .local v8, m:Landroid/graphics/Matrix;
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 460
    return-object v7
.end method

.method protected updateScale()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 179
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 180
    .local v1, zoom:F
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalScale(F)V

    .line 181
    return-void
.end method
