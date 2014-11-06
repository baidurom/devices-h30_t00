.class public Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageCrop.java"


# static fields
.field private static final BOTTOM_LEFT:I = 0x9

.field private static final BOTTOM_RIGHT:I = 0xc

.field private static final LOGTAG:Ljava/lang/String; = "ImageCrop"

.field private static final LOGV:Z = false

.field private static final MIN_CROP_WIDTH_HEIGHT:F = 0.1f

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final TOP_LEFT:I = 0x3

.field private static final TOP_RIGHT:I = 0x6

.field private static final gPaint:Landroid/graphics/Paint;

.field private static mTouchTolerance:I


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final cropIndicator:Landroid/graphics/drawable/Drawable;

.field private final indicatorSize:I

.field private mAspect:Ljava/lang/String;

.field private mAspectHeight:F

.field private mAspectTextSize:I

.field private mAspectWidth:F

.field private final mBorderColor:I

.field private mFirstDraw:Z

.field private mFixAspectRatio:Z

.field private mLastRot:F

.field private movingEdges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x2d

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 80
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 52
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 53
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 62
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 67
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0202d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 83
    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 52
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 53
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 62
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 67
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0202d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 94
    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    return-void
.end method

.method private cropSetup()V
    .locals 4

    .prologue
    .line 585
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v2, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 587
    .local v0, cb:Landroid/graphics/RectF;
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 588
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 589
    .local v1, cb0:Landroid/graphics/RectF;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 593
    .end local v0           #cb:Landroid/graphics/RectF;
    .end local v1           #cb0:Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private detectMovingEdges(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 372
    .local v1, cropped:Landroid/graphics/RectF;
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 375
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 376
    .local v2, left:F
    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 377
    .local v3, right:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_4

    cmpg-float v7, v2, v3

    if-gez v7, :cond_4

    .line 378
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 385
    :cond_0
    :goto_0
    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 386
    .local v4, top:F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 387
    .local v0, bottom:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_5

    move v7, v5

    :goto_1
    cmpg-float v8, v4, v0

    if-gez v8, :cond_6

    :goto_2
    and-int/2addr v5, v7

    if-eqz v5, :cond_7

    .line 388
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 394
    :cond_1
    :goto_3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v5, :cond_2

    .line 395
    iput v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 397
    :cond_2
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eq v5, v9, :cond_3

    .line 398
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    invoke-direct {p0, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixEdgeToCorner(I)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 400
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 401
    return-void

    .line 380
    .end local v0           #bottom:F
    .end local v4           #top:F
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 381
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_0

    .restart local v0       #bottom:F
    .restart local v4       #top:F
    :cond_5
    move v7, v6

    .line 387
    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2

    .line 390
    :cond_7
    sget v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    .line 391
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 558
    float-to-int v2, p3

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 559
    .local v0, left:I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 560
    .local v1, top:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    return-void
.end method

.method private drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 13
    .parameter "canvas"
    .parameter "bounds"
    .parameter "p"

    .prologue
    .line 626
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x4040

    div-float v10, v0, v2

    .line 627
    .local v10, stepX:F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x4040

    div-float v11, v0, v2

    .line 628
    .local v11, stepY:F
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v10

    .line 629
    .local v1, x:F
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v12, v0, v11

    .line 630
    .local v12, y:F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 631
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v3, v1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 632
    add-float/2addr v1, v10

    .line 630
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 634
    :cond_0
    const/4 v9, 0x0

    .local v9, j:I
    move v4, v12

    .end local v12           #y:F
    .local v4, y:F
    :goto_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_1

    .line 635
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    move-object v2, p1

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 636
    add-float/2addr v4, v11

    .line 634
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 638
    :cond_1
    return-void
.end method

.method private fixEdgeToCorner(I)I
    .locals 1
    .parameter "moving_edges"

    .prologue
    .line 404
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 405
    or-int/lit8 p1, p1, 0x2

    .line 407
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 408
    or-int/lit8 p1, p1, 0x1

    .line 410
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 411
    or-int/lit8 p1, p1, 0x8

    .line 413
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 414
    or-int/lit8 p1, p1, 0x4

    .line 416
    :cond_3
    return p1
.end method

.method private fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 6
    .parameter "r"
    .parameter "moving_corner"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, newCrop:Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 423
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 435
    .restart local v0       #newCrop:Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v0

    .line 425
    :cond_1
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 426
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0

    .line 428
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 429
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0

    .line 431
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 432
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method private getRotatedCropBounds()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 263
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 264
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 266
    .local v2, m:Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 274
    :goto_0
    return-object v1

    .line 272
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getRotatedStraightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 303
    .local v1, straightenBounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 305
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 312
    .end local v1           #straightenBounds:Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 310
    .restart local v1       #straightenBounds:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getScaledMinWidthHeight()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 214
    .local v0, disp:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v3

    div-float v1, v2, v3

    .line 216
    .local v1, scaled:F
    return v1
.end method

.method private getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .parameter "cropBounds"

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 280
    .local v1, m:Landroid/graphics/Matrix;
    if-nez v1, :cond_1

    move-object v0, v3

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    .local v2, m0:Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 289
    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 292
    .local v0, crop:Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 295
    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 26
    .parameter "dX"
    .parameter "dY"

    .prologue
    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 440
    .local v7, cropped:Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v17

    .line 441
    .local v17, minWidthHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v19

    .line 442
    .local v19, scale:F
    div-float v8, p1, v19

    .line 443
    .local v8, deltaX:F
    div-float v9, p2, v19

    .line 444
    .local v9, deltaY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v20, v0

    .line 445
    .local v20, select:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 456
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 457
    or-int/lit8 v20, v20, 0x2

    .line 459
    :cond_0
    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 460
    or-int/lit8 v20, v20, 0x1

    .line 462
    :cond_1
    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 463
    or-int/lit8 v20, v20, 0x8

    .line 465
    :cond_2
    const/16 v23, 0x8

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 466
    or-int/lit8 v20, v20, 0x4

    .line 470
    :cond_3
    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 471
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedStraightenBounds()Landroid/graphics/RectF;

    move-result-object v22

    .line 473
    .local v22, straight:Landroid/graphics/RectF;
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 475
    :goto_0
    const/16 v23, 0x0

    cmpl-float v23, v9, v23

    if-lez v23, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 477
    :goto_1
    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 541
    .end local v22           #straight:Landroid/graphics/RectF;
    :cond_4
    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v15

    .line 543
    .local v15, m:Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 545
    .local v16, m0:Landroid/graphics/Matrix;
    if-eqz v15, :cond_5

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 550
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 554
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 555
    :cond_7
    :goto_3
    return-void

    .line 473
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #m0:Landroid/graphics/Matrix;
    .restart local v22       #straight:Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 475
    :cond_9
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_1

    .line 479
    .end local v22           #straight:Landroid/graphics/RectF;
    :cond_a
    const/4 v11, 0x0

    .line 480
    .local v11, dx:F
    const/4 v12, 0x0

    .line 482
    .local v12, dy:F
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_b

    .line 483
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 485
    :cond_b
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_c

    .line 486
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 488
    :cond_c
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_d

    .line 489
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 492
    :cond_d
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_e

    .line 493
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 497
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v6

    .line 499
    .local v6, crop:Landroid/graphics/RectF;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v13, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    aput v24, v13, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 500
    .local v13, l1:[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v14, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    aput v24, v14, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 501
    .local v14, l2:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 502
    :cond_f
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 503
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 505
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v13, v24

    const/16 v25, 0x0

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x1

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    .line 506
    .local v4, b:[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [F

    const/16 v23, 0x0

    aput v11, v10, v23

    const/16 v23, 0x1

    aput v12, v10, v23

    .line 507
    .local v10, disp:[F
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->normalize([F)[F

    move-result-object v5

    .line 508
    .local v5, bUnit:[F
    invoke-static {v10, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scalarProjection([F[F)F

    move-result v21

    .line 509
    .local v21, sp:F
    const/16 v23, 0x0

    aget v23, v5, v23

    mul-float v11, v21, v23

    .line 510
    const/16 v23, 0x1

    aget v23, v5, v23

    mul-float v12, v21, v23

    .line 511
    mul-float v23, v11, v19

    mul-float v24, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v18

    .line 512
    .local v18, newCrop:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    .line 513
    .restart local v15       #m:Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 514
    .restart local v16       #m0:Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 519
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto/16 :goto_3

    .line 527
    .end local v4           #b:[F
    .end local v5           #bUnit:[F
    .end local v6           #crop:Landroid/graphics/RectF;
    .end local v10           #disp:[F
    .end local v13           #l1:[F
    .end local v14           #l2:[F
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #m0:Landroid/graphics/Matrix;
    .end local v18           #newCrop:Landroid/graphics/RectF;
    .end local v21           #sp:F
    :cond_11
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_12

    .line 528
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 530
    :cond_12
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_13

    .line 531
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 533
    :cond_13
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_14

    .line 534
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 536
    :cond_14
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_4

    .line 537
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2
.end method

.method public static setTouchTolerance(I)V
    .locals 0
    .parameter "tolerance"

    .prologue
    .line 113
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 114
    return-void
.end method

.method private shadowForUnselect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "photoRect"
    .parameter "selectRect"

    .prologue
    const/4 v5, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 643
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 644
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 645
    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 646
    const/16 v2, 0x66

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 647
    return-object v0
.end method

.method private swapAspect()V
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 108
    .local v0, temp:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 109
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 110
    return-void
.end method

.method private switchCropBounds(ILandroid/graphics/RectF;)Z
    .locals 13
    .parameter "moving_corner"
    .parameter "dst"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v0

    .line 118
    .local v0, crop:Landroid/graphics/RectF;
    const/4 v1, 0x0

    .line 119
    .local v1, dx1:F
    const/4 v3, 0x0

    .line 120
    .local v3, dy1:F
    const/4 v2, 0x0

    .line 121
    .local v2, dx2:F
    const/4 v4, 0x0

    .line 122
    .local v4, dy2:F
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_5

    .line 123
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v9, v0, Landroid/graphics/RectF;->right:F

    sub-float v1, v8, v9

    .line 127
    :cond_0
    :goto_0
    and-int/lit8 v8, p1, 0x8

    if-eqz v8, :cond_6

    .line 128
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v8, v9

    .line 132
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 134
    .local v7, newCrop:Landroid/graphics/RectF;
    const/16 v8, 0xc

    if-ne p1, v8, :cond_7

    .line 135
    new-instance v7, Landroid/graphics/RectF;

    .end local v7           #newCrop:Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v12

    add-float/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 147
    .restart local v7       #newCrop:Landroid/graphics/RectF;
    :cond_2
    :goto_2
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_a

    .line 148
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v9, v7, Landroid/graphics/RectF;->right:F

    sub-float v2, v8, v9

    .line 152
    :cond_3
    :goto_3
    and-int/lit8 v8, p1, 0x8

    if-eqz v8, :cond_b

    .line 153
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v8, v9

    .line 157
    :cond_4
    :goto_4
    mul-float v8, v1, v1

    mul-float v9, v3, v3

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-float v10, v2, v2

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_e

    .line 158
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 159
    .local v5, m:Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v6, m0:Landroid/graphics/Matrix;
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 163
    const/4 v8, 0x0

    .line 174
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v6           #m0:Landroid/graphics/Matrix;
    :goto_5
    return v8

    .line 124
    .end local v7           #newCrop:Landroid/graphics/RectF;
    :cond_5
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_0

    .line 125
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v8, v9

    goto :goto_0

    .line 129
    :cond_6
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_1

    .line 130
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float v3, v8, v9

    goto :goto_1

    .line 137
    .restart local v7       #newCrop:Landroid/graphics/RectF;
    :cond_7
    const/16 v8, 0x9

    if-ne p1, v8, :cond_8

    .line 138
    new-instance v7, Landroid/graphics/RectF;

    .end local v7           #newCrop:Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget v11, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v12

    add-float/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v7       #newCrop:Landroid/graphics/RectF;
    goto :goto_2

    .line 140
    :cond_8
    const/4 v8, 0x3

    if-ne p1, v8, :cond_9

    .line 141
    new-instance v7, Landroid/graphics/RectF;

    .end local v7           #newCrop:Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v7       #newCrop:Landroid/graphics/RectF;
    goto/16 :goto_2

    .line 143
    :cond_9
    const/4 v8, 0x6

    if-ne p1, v8, :cond_2

    .line 144
    new-instance v7, Landroid/graphics/RectF;

    .end local v7           #newCrop:Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v7       #newCrop:Landroid/graphics/RectF;
    goto/16 :goto_2

    .line 149
    :cond_a
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_3

    .line 150
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v9, v7, Landroid/graphics/RectF;->left:F

    sub-float v2, v8, v9

    goto/16 :goto_3

    .line 154
    :cond_b
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_4

    .line 155
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    sub-float v4, v8, v9

    goto/16 :goto_4

    .line 165
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v6       #m0:Landroid/graphics/Matrix;
    :cond_c
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 168
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 170
    :cond_d
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->swapAspect()V

    .line 171
    invoke-virtual {p2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 172
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 174
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v6           #m0:Landroid/graphics/Matrix;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_5
.end method


# virtual methods
.method public apply(FF)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 179
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 180
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 181
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 183
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 186
    return-void
.end method

.method public applyClear()V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 207
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 210
    return-void
.end method

.method public applyOriginal()V
    .locals 5

    .prologue
    .line 189
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 191
    .local v1, photobounds:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 192
    .local v3, w:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 193
    .local v0, h:F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 194
    .local v2, scale:F
    div-float v4, v3, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 195
    div-float v4, v0, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 198
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 199
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 201
    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 25
    .parameter "canvas"
    .parameter "image"

    .prologue
    .line 653
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 654
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 655
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 656
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    const/16 v24, 0xff

    move/from16 v0, v24

    invoke-virtual {v3, v4, v5, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 658
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    if-eqz v3, :cond_0

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 660
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 663
    :cond_0
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 664
    .local v13, crop:Landroid/graphics/RectF;
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 666
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 667
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->shadowForUnselect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 670
    .local v19, shadow:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 672
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v3, :cond_3

    .line 673
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v22

    .line 674
    .local v22, w:F
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v16

    .line 675
    .local v16, h:F
    mul-float v3, v22, v22

    mul-float v4, v16, v16

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v15, v3

    .line 677
    .local v15, diag:F
    const/high16 v14, 0x41a0

    .line 678
    .local v14, dash_len:F
    div-float v3, v15, v14

    float-to-int v0, v3

    move/from16 v18, v0

    .line 679
    .local v18, num_intervals:I
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v20, v0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->left:F

    aput v4, v20, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->top:F

    aput v4, v20, v3

    .line 680
    .local v20, tl:[F
    const/4 v3, 0x0

    aget v3, v20, v3

    const/high16 v4, 0x4000

    div-float v4, v22, v4

    add-float v10, v3, v4

    .line 681
    .local v10, centX:F
    const/4 v3, 0x1

    aget v3, v20, v3

    const/high16 v4, 0x4000

    div-float v4, v16, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40a0

    add-float v11, v3, v4

    .line 682
    .local v11, centY:F
    const/4 v3, 0x2

    new-array v9, v3, [F

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->right:F

    aput v4, v9, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    aput v4, v9, v3

    .line 683
    .local v9, br:[F
    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->getUnitVectorFromPoints([F[F)[F

    move-result-object v21

    .line 685
    .local v21, vec:[F
    move-object/from16 v12, v20

    .line 686
    .local v12, counter:[F
    const/16 v23, 0x0

    .local v23, x:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 687
    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v4, 0x0

    aget v4, v21, v4

    mul-float/2addr v4, v14

    add-float v6, v3, v4

    .line 688
    .local v6, tempX:F
    const/4 v3, 0x1

    aget v3, v12, v3

    const/4 v4, 0x1

    aget v4, v21, v4

    mul-float/2addr v4, v14

    add-float v7, v3, v4

    .line 689
    .local v7, tempY:F
    rem-int/lit8 v3, v23, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, v18, 0x2

    sub-int v3, v23, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 690
    const/4 v3, 0x0

    aget v4, v12, v3

    const/4 v3, 0x1

    aget v5, v12, v3

    sget-object v8, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 692
    :cond_1
    const/4 v3, 0x0

    aput v6, v12, v3

    .line 693
    const/4 v3, 0x1

    aput v7, v12, v3

    .line 686
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 696
    .end local v6           #tempX:F
    .end local v7           #tempY:F
    :cond_2
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 697
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 701
    .end local v9           #br:[F
    .end local v10           #centX:F
    .end local v11           #centY:F
    .end local v12           #counter:[F
    .end local v14           #dash_len:F
    .end local v15           #diag:F
    .end local v16           #h:F
    .end local v18           #num_intervals:I
    .end local v20           #tl:[F
    .end local v21           #vec:[F
    .end local v22           #w:F
    .end local v23           #x:I
    :cond_3
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 702
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 703
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 704
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 706
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v3, :cond_c

    const/16 v17, 0x1

    .line 707
    .local v17, notMoving:Z
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    if-eqz v17, :cond_5

    .line 708
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v13, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 710
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_6

    if-eqz v17, :cond_7

    .line 711
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 713
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_8

    if-eqz v17, :cond_9

    .line 714
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    iget v4, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 716
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_a

    if-eqz v17, :cond_b

    .line 717
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    iget v4, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 719
    :cond_b
    return-void

    .line 706
    .end local v17           #notMoving:Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_1
.end method

.method protected gainedVisibility()V
    .locals 3

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    .line 607
    .local v0, rot:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    sub-float v1, v0, v1

    const/high16 v2, 0x42b4

    div-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->swapAspect()V

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 611
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 612
    return-void
.end method

.method protected getCropBoundDisplayMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 230
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/graphics/Matrix;

    .end local v0           #m:Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    .restart local v0       #m:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v1

    .line 236
    .local v1, zoom:F
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 237
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 238
    return-object v0
.end method

.method protected getCropBoundsDisplayed()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 243
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 244
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 246
    .local v2, m:Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 253
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    .end local v2           #m:Landroid/graphics/Matrix;
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 254
    .restart local v2       #m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v3

    .line 255
    .local v3, zoom:F
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 256
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 257
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 258
    return-object v1

    .line 251
    .end local v3           #zoom:F
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method protected getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 3
    .parameter "rotation"
    .parameter "localImage"

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 221
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 597
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->imageLoaded()V

    .line 598
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->syncLocalToMasterGeometry()V

    .line 599
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 600
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 601
    return-void
.end method

.method protected lostVisibility()V
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 623
    return-void
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 616
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 617
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 618
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 566
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->detectMovingEdges(FF)V

    .line 568
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 578
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eqz v0, :cond_0

    .line 579
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    sub-float v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->moveEdges(FF)V

    .line 581
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 582
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 574
    return-void
.end method

.method public setAspectString(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setAspectTextSize(I)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 71
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 14
    .parameter "bounds"

    .prologue
    .line 321
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 322
    .local v2, cbounds:Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v3

    .line 323
    .local v3, minWidthHeight:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 324
    .local v1, aw:F
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 325
    .local v0, ah:F
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_0

    .line 326
    mul-float v10, v1, v0

    div-float/2addr v3, v10

    .line 327
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v10

    const/high16 v11, 0x42b4

    div-float/2addr v10, v11

    float-to-int v7, v10

    .line 328
    .local v7, r:I
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_0

    .line 329
    move v9, v1

    .line 330
    .local v9, temp:F
    move v1, v0

    .line 331
    move v0, v9

    .line 335
    .end local v7           #r:I
    .end local v9           #temp:F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 336
    .local v5, newWidth:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 337
    .local v4, newHeight:F
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_6

    .line 338
    mul-float v10, v3, v1

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_1

    mul-float v10, v3, v0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    .line 339
    :cond_1
    mul-float v5, v3, v1

    .line 340
    mul-float v4, v3, v0

    .line 350
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 351
    .local v6, pbounds:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_3

    .line 352
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 354
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_4

    .line 355
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 358
    :cond_4
    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    iget v12, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v5

    iget v13, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v4

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 359
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v8

    .line 361
    .local v8, straightenBounds:Landroid/graphics/RectF;
    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 363
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_5

    .line 364
    invoke-static {v2, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 366
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 368
    return-void

    .line 343
    .end local v6           #pbounds:Landroid/graphics/RectF;
    .end local v8           #straightenBounds:Landroid/graphics/RectF;
    :cond_6
    cmpg-float v10, v5, v3

    if-gez v10, :cond_7

    .line 344
    move v5, v3

    .line 346
    :cond_7
    cmpg-float v10, v4, v3

    if-gez v10, :cond_2

    .line 347
    move v4, v3

    goto :goto_0
.end method
