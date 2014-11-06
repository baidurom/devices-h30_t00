.class public Lcom/android/gallery3d/filtershow/ui/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# static fields
.field public static final BLUE:I = 0x3

.field public static final GREEN:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "Spline"

.field public static final RED:I = 0x1

.field public static final RGB:I

.field private static mCurveHandle:Landroid/graphics/drawable/Drawable;

.field private static mCurveHandleSize:I

.field private static mCurveWidth:I


# instance fields
.field private final gPaint:Landroid/graphics/Paint;

.field private mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

.field private final mPoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/ui/ControlPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V
    .locals 4
    .parameter "spline"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 49
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 51
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 52
    .local v2, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V

    .line 53
    .local v1, newPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    if-ne v3, v2, :cond_0

    .line 55
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v1           #newPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .end local v2           #p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public static colorForCurve(I)I
    .locals 1
    .parameter "curveIndex"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 83
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 77
    :pswitch_0
    const/high16 v0, -0x1

    goto :goto_0

    .line 79
    :pswitch_1
    const v0, -0xff0100

    goto :goto_0

    .line 81
    :pswitch_2
    const v0, -0xffff01

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static curveHandleSize()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    return v0
.end method

.method private didMovePoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 88
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;FF)V
    .locals 11
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v7, 0x4040

    const/16 v6, 0xc8

    const/16 v4, 0x96

    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    const/high16 v0, 0x4110

    div-float v9, p3, v0

    .line 192
    .local v9, stepH:F
    const/high16 v0, 0x4110

    div-float v10, p2, v0

    .line 195
    .local v10, stepW:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, p2

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    div-float v9, p3, v7

    .line 202
    div-float v10, p2, v7

    .line 203
    const/4 v8, 0x1

    .local v8, j:I
    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 204
    int-to-float v0, v8

    mul-float v2, v0, v9

    int-to-float v0, v8

    mul-float v4, v0, v9

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    int-to-float v0, v8

    mul-float v3, v0, v10

    int-to-float v0, v8

    mul-float v5, v0, v10

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, p2

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 114
    float-to-int v2, p3

    sget v3, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 115
    .local v0, left:I
    float-to-int v2, p4

    sget v3, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 116
    .local v1, top:I
    sget v2, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    add-int/2addr v2, v0

    sget v3, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    return-void
.end method

.method public static setCurveHandle(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "drawable"
    .parameter "size"

    .prologue
    .line 62
    sput-object p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandle:Landroid/graphics/drawable/Drawable;

    .line 63
    sput p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    .line 64
    return-void
.end method

.method public static setCurveWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 67
    sput p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveWidth:I

    .line 68
    return-void
.end method


# virtual methods
.method public addPoint(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 365
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I

    move-result v0

    return v0
.end method

.method public addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public copy()Lcom/android/gallery3d/filtershow/ui/Spline;
    .locals 4

    .prologue
    .line 404
    new-instance v2, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>()V

    .line 405
    .local v2, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 407
    .local v1, point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->copy()Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    return-object v2
.end method

.method public deletePoint(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 377
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIIZZ)V
    .locals 54
    .parameter "canvas"
    .parameter "color"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "showHandles"
    .parameter "moving"

    .prologue
    .line 215
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    sub-int v4, p3, v4

    int-to-float v0, v4

    move/from16 v41, v0

    .line 216
    .local v41, w:F
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    sub-int v4, p4, v4

    int-to-float v8, v4

    .line 217
    .local v8, h:F
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v26, v0

    .line 218
    .local v26, dx:F
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v27, v0

    .line 240
    .local v27, dy:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v32, v0

    .line 241
    .local v32, points:[Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 243
    .local v30, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    new-instance v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    mul-float v7, v7, v41

    move-object/from16 v0, v30

    iget v10, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    mul-float/2addr v10, v8

    invoke-direct {v4, v7, v10}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    aput-object v4, v32, v28

    .line 241
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 245
    .end local v30           #p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->solveSystem([Lcom/android/gallery3d/filtershow/ui/ControlPoint;)[D

    move-result-object v25

    .line 247
    .local v25, derivatives:[D
    new-instance v31, Landroid/graphics/Path;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Path;-><init>()V

    .line 248
    .local v31, path:Landroid/graphics/Path;
    const/4 v4, 0x0

    const/4 v7, 0x0

    aget-object v7, v32, v7

    iget v7, v7, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    const/16 v28, 0x0

    :goto_1
    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_4

    .line 250
    aget-object v4, v32, v28

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    float-to-double v0, v4

    move-wide/from16 v44, v0

    .line 251
    .local v44, x1:D
    add-int/lit8 v4, v28, 0x1

    aget-object v4, v32, v4

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    float-to-double v0, v4

    move-wide/from16 v46, v0

    .line 252
    .local v46, x2:D
    aget-object v4, v32, v28

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    float-to-double v0, v4

    move-wide/from16 v50, v0

    .line 253
    .local v50, y1:D
    add-int/lit8 v4, v28, 0x1

    aget-object v4, v32, v4

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    float-to-double v0, v4

    move-wide/from16 v52, v0

    .line 255
    .local v52, y2:D
    move-wide/from16 v42, v44

    .local v42, x:D
    :goto_2
    cmpg-double v4, v42, v46

    if-gez v4, :cond_3

    .line 258
    sub-double v21, v46, v44

    .line 259
    .local v21, delta:D
    mul-double v23, v21, v21

    .line 260
    .local v23, delta2:D
    sub-double v10, v42, v44

    div-double v18, v10, v21

    .line 261
    .local v18, b:D
    const-wide/high16 v10, 0x3ff0

    sub-double v16, v10, v18

    .line 262
    .local v16, a:D
    mul-double v33, v16, v50

    .line 263
    .local v33, ta:D
    mul-double v35, v18, v52

    .line 264
    .local v35, tb:D
    mul-double v10, v16, v16

    mul-double v10, v10, v16

    sub-double v10, v10, v16

    aget-wide v12, v25, v28

    mul-double v37, v10, v12

    .line 265
    .local v37, tc:D
    mul-double v10, v18, v18

    mul-double v10, v10, v18

    sub-double v10, v10, v18

    add-int/lit8 v4, v28, 0x1

    aget-wide v12, v25, v4

    mul-double v39, v10, v12

    .line 266
    .local v39, td:D
    add-double v10, v33, v35

    const-wide/high16 v12, 0x4018

    div-double v12, v23, v12

    add-double v14, v37, v39

    mul-double/2addr v12, v14

    add-double v48, v10, v12

    .line 267
    .local v48, y:D
    float-to-double v10, v8

    cmpl-double v4, v48, v10

    if-lez v4, :cond_1

    .line 268
    float-to-double v0, v8

    move-wide/from16 v48, v0

    .line 270
    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v4, v48, v10

    if-gez v4, :cond_2

    .line 271
    const-wide/16 v48, 0x0

    .line 273
    :cond_2
    move-wide/from16 v0, v42

    double-to-float v4, v0

    move-wide/from16 v0, v48

    double-to-float v7, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    const-wide/high16 v10, 0x4034

    add-double v42, v42, v10

    goto :goto_2

    .line 249
    .end local v16           #a:D
    .end local v18           #b:D
    .end local v21           #delta:D
    .end local v23           #delta2:D
    .end local v33           #ta:D
    .end local v35           #tb:D
    .end local v37           #tc:D
    .end local v39           #td:D
    .end local v48           #y:D
    :cond_3
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 276
    .end local v42           #x:D
    .end local v44           #x1:D
    .end local v46           #x2:D
    .end local v50           #y1:D
    .end local v52           #y2:D
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-direct {v0, v1, v2, v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->drawGrid(Landroid/graphics/Canvas;FF)V

    .line 279
    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v29, v32, v4

    .line 280
    .local v29, lastPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 283
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 284
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 285
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 286
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    sget v20, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveWidth:I

    .line 288
    .local v20, curveWidth:I
    if-eqz p5, :cond_5

    .line 289
    move/from16 v0, v20

    int-to-double v10, v0

    const-wide/high16 v12, 0x3ff8

    mul-double/2addr v10, v12

    double-to-int v0, v10

    move/from16 v20, v0

    .line 291
    :cond_5
    add-int/lit8 v4, v20, 0x2

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 292
    const/high16 v4, -0x100

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 295
    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    if-eqz v4, :cond_6

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    mul-float v5, v4, v41

    .line 297
    .local v5, px:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    mul-float v6, v4, v8

    .line 298
    .local v6, py:F
    const/high16 v4, 0x4040

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    const/high16 v4, -0x100

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v4, p1

    move v7, v5

    .line 300
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    const/4 v11, 0x0

    move-object/from16 v10, p1

    move v12, v6

    move v13, v5

    move v14, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    const/high16 v4, 0x3f80

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 303
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v4, p1

    move v7, v5

    .line 304
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 305
    const/4 v11, 0x0

    move-object/from16 v10, p1

    move v12, v6

    move v13, v5

    move v14, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    .end local v5           #px:F
    .end local v6           #py:F
    :cond_6
    move/from16 v0, v20

    int-to-float v4, v0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    if-eqz p5, :cond_7

    .line 312
    const/16 v28, 0x0

    :goto_3
    move-object/from16 v0, v32

    array-length v4, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_7

    .line 313
    aget-object v4, v32, v28

    iget v0, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v42, v0

    .line 314
    .local v42, x:F
    aget-object v4, v32, v28

    iget v0, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v48, v0

    .line 315
    .local v48, y:F
    sget-object v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandle:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    move/from16 v3, v48

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->drawHandles(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 312
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 318
    .end local v42           #x:F
    .end local v48           #y:F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 319
    return-void
.end method

.method public getAppliedCurve()[F
    .locals 47

    .prologue
    .line 121
    const/16 v41, 0x100

    move/from16 v0, v41

    new-array v7, v0, [F

    .line 122
    .local v7, curve:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v41

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v19, v0

    .line 123
    .local v19, points:[Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v14, v0, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 125
    .local v17, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    new-instance v41, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v42, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v43, v0

    invoke-direct/range {v41 .. v43}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    aput-object v41, v19, v14

    .line 123
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 127
    .end local v17           #p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->solveSystem([Lcom/android/gallery3d/filtershow/ui/ControlPoint;)[D

    move-result-object v12

    .line 128
    .local v12, derivatives:[D
    const/16 v20, 0x0

    .line 129
    .local v20, start:I
    const/16 v13, 0x100

    .line 130
    .local v13, end:I
    const/16 v41, 0x0

    aget-object v41, v19, v41

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    const/16 v42, 0x0

    cmpl-float v41, v41, v42

    if-eqz v41, :cond_1

    .line 131
    const/16 v41, 0x0

    aget-object v41, v19, v41

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    const/high16 v42, 0x4380

    mul-float v41, v41, v42

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v20, v0

    .line 133
    :cond_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    aget-object v41, v19, v41

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    const/high16 v42, 0x3f80

    cmpl-float v41, v41, v42

    if-eqz v41, :cond_2

    .line 134
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    aget-object v41, v19, v41

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    const/high16 v42, 0x4380

    mul-float v41, v41, v42

    move/from16 v0, v41

    float-to-int v13, v0

    .line 136
    :cond_2
    const/16 v41, 0x100

    move/from16 v0, v41

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 137
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 138
    const/high16 v41, 0x3f80

    const/16 v42, 0x0

    aget-object v42, v19, v42

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v42, v0

    sub-float v41, v41, v42

    aput v41, v7, v14

    .line 137
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 140
    :cond_3
    move v14, v13

    :goto_2
    const/16 v41, 0x100

    move/from16 v0, v41

    if-ge v14, v0, :cond_4

    .line 141
    const/high16 v41, 0x3f80

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget-object v42, v19, v42

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v42, v0

    sub-float v41, v41, v42

    aput v41, v7, v14

    .line 140
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 143
    :cond_4
    move/from16 v14, v20

    :goto_3
    if-ge v14, v13, :cond_a

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, cur:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const/16 v16, 0x0

    .line 146
    .local v16, next:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    int-to-double v0, v14

    move-wide/from16 v41, v0

    const-wide/high16 v43, 0x4070

    div-double v29, v41, v43

    .line 147
    .local v29, x:D
    const/16 v18, 0x0

    .line 148
    .local v18, pivot:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ge v15, v0, :cond_6

    .line 149
    aget-object v41, v19, v15

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    cmpl-double v41, v29, v41

    if-ltz v41, :cond_5

    add-int/lit8 v41, v15, 0x1

    aget-object v41, v19, v41

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    cmpg-double v41, v29, v41

    if-gtz v41, :cond_5

    .line 150
    move/from16 v18, v15

    .line 148
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 153
    :cond_6
    aget-object v6, v19, v18

    .line 154
    add-int/lit8 v41, v18, 0x1

    aget-object v16, v19, v41

    .line 155
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    cmpg-double v41, v29, v41

    if-gtz v41, :cond_9

    .line 156
    iget v0, v6, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v31, v0

    .line 157
    .local v31, x1:D
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v33, v0

    .line 158
    .local v33, x2:D
    iget v0, v6, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v37, v0

    .line 159
    .local v37, y1:D
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v39, v0

    .line 163
    .local v39, y2:D
    sub-double v8, v33, v31

    .line 164
    .local v8, delta:D
    mul-double v10, v8, v8

    .line 165
    .local v10, delta2:D
    sub-double v41, v29, v31

    div-double v4, v41, v8

    .line 166
    .local v4, b:D
    const-wide/high16 v41, 0x3ff0

    sub-double v2, v41, v4

    .line 167
    .local v2, a:D
    mul-double v21, v2, v37

    .line 168
    .local v21, ta:D
    mul-double v23, v4, v39

    .line 169
    .local v23, tb:D
    mul-double v41, v2, v2

    mul-double v41, v41, v2

    sub-double v41, v41, v2

    aget-wide v43, v12, v18

    mul-double v25, v41, v43

    .line 170
    .local v25, tc:D
    mul-double v41, v4, v4

    mul-double v41, v41, v4

    sub-double v41, v41, v4

    add-int/lit8 v43, v18, 0x1

    aget-wide v43, v12, v43

    mul-double v27, v41, v43

    .line 171
    .local v27, td:D
    add-double v41, v21, v23

    const-wide/high16 v43, 0x4018

    div-double v43, v10, v43

    add-double v45, v25, v27

    mul-double v43, v43, v45

    add-double v35, v41, v43

    .line 172
    .local v35, y:D
    const-wide/high16 v41, 0x3ff0

    cmpl-double v41, v35, v41

    if-lez v41, :cond_7

    .line 173
    const-wide/high16 v35, 0x3ff0

    .line 175
    :cond_7
    const-wide/16 v41, 0x0

    cmpg-double v41, v35, v41

    if-gez v41, :cond_8

    .line 176
    const-wide/16 v35, 0x0

    .line 178
    :cond_8
    const-wide/high16 v41, 0x3ff0

    sub-double v41, v41, v35

    move-wide/from16 v0, v41

    double-to-float v0, v0

    move/from16 v41, v0

    aput v41, v7, v14

    .line 143
    .end local v2           #a:D
    .end local v4           #b:D
    .end local v8           #delta:D
    .end local v10           #delta2:D
    .end local v21           #ta:D
    .end local v23           #tb:D
    .end local v25           #tc:D
    .end local v27           #td:D
    .end local v31           #x1:D
    .end local v33           #x2:D
    .end local v35           #y:D
    .end local v37           #y1:D
    .end local v39           #y2:D
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 180
    :cond_9
    const/high16 v41, 0x3f80

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v42, v0

    sub-float v41, v41, v42

    aput v41, v7, v14

    goto :goto_5

    .line 183
    .end local v6           #cur:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .end local v15           #j:I
    .end local v16           #next:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .end local v18           #pivot:I
    .end local v29           #x:D
    :cond_a
    return-object v7
.end method

.method public getNbPoints()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .locals 1
    .parameter "n"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    return-object v0
.end method

.method public isOriginal()Z
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 108
    goto :goto_0

    :cond_4
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method public isPointContained(FI)Z
    .locals 4
    .parameter "x"
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 388
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 389
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 390
    .local v1, point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget v3, v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    .line 400
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    :goto_1
    return v2

    .line 388
    .restart local v1       #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_2
    add-int/lit8 v0, p2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 395
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 396
    .restart local v1       #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget v3, v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 400
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public movePoint(IFF)V
    .locals 2
    .parameter "pick"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 91
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 95
    .local v0, point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iput p2, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 96
    iput p3, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 97
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->didMovePoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    .line 413
    const-string v2, "Spline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show curve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 416
    .local v1, point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const-string v2, "Spline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "point "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    return-void
.end method

.method solveSystem([Lcom/android/gallery3d/filtershow/ui/ControlPoint;)[D
    .locals 29
    .parameter "points"

    .prologue
    .line 322
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 323
    .local v19, n:I
    const/16 v23, 0x3

    move/from16 v0, v19

    move/from16 v1, v23

    filled-new-array {v0, v1}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[D

    .line 324
    .local v22, system:[[D
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 325
    .local v20, result:[D
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 326
    .local v21, solution:[D
    const/16 v23, 0x0

    aget-object v23, v22, v23

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0

    aput-wide v25, v23, v24

    .line 327
    add-int/lit8 v23, v19, -0x1

    aget-object v23, v22, v23

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0

    aput-wide v25, v23, v24

    .line 328
    const-wide v4, 0x3fc5555555555555L

    .line 329
    .local v4, d6:D
    const-wide v2, 0x3fd5555555555555L

    .line 334
    .local v2, d3:D
    const/16 v16, 0x1

    .local v16, i:I
    :goto_0
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 335
    aget-object v23, p1, v16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v23, v0

    add-int/lit8 v24, v16, -0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v10, v0

    .line 336
    .local v10, deltaPrevX:D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v23, v0

    add-int/lit8 v24, v16, -0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v14, v0

    .line 337
    .local v14, deltaX:D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v23, v0

    aget-object v24, p1, v16

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v6, v0

    .line 338
    .local v6, deltaNextX:D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v23, v0

    aget-object v24, p1, v16

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v8, v0

    .line 339
    .local v8, deltaNextY:D
    aget-object v23, p1, v16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v23, v0

    add-int/lit8 v24, v16, -0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v12, v0

    .line 340
    .local v12, deltaPrevY:D
    aget-object v23, v22, v16

    const/16 v24, 0x0

    mul-double v25, v4, v10

    aput-wide v25, v23, v24

    .line 341
    aget-object v23, v22, v16

    const/16 v24, 0x1

    mul-double v25, v2, v14

    aput-wide v25, v23, v24

    .line 342
    aget-object v23, v22, v16

    const/16 v24, 0x2

    mul-double v25, v4, v6

    aput-wide v25, v23, v24

    .line 343
    div-double v23, v8, v6

    div-double v25, v12, v10

    sub-double v23, v23, v25

    aput-wide v23, v20, v16

    .line 334
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 347
    .end local v6           #deltaNextX:D
    .end local v8           #deltaNextY:D
    .end local v10           #deltaPrevX:D
    .end local v12           #deltaPrevY:D
    .end local v14           #deltaX:D
    :cond_0
    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 349
    aget-object v23, v22, v16

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    add-int/lit8 v25, v16, -0x1

    aget-object v25, v22, v25

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    div-double v17, v23, v25

    .line 351
    .local v17, m:D
    aget-object v23, v22, v16

    const/16 v24, 0x1

    aget-object v25, v22, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    add-int/lit8 v27, v16, -0x1

    aget-object v27, v22, v27

    const/16 v28, 0x2

    aget-wide v27, v27, v28

    mul-double v27, v27, v17

    sub-double v25, v25, v27

    aput-wide v25, v23, v24

    .line 353
    aget-wide v23, v20, v16

    add-int/lit8 v25, v16, -0x1

    aget-wide v25, v20, v25

    mul-double v25, v25, v17

    sub-double v23, v23, v25

    aput-wide v23, v20, v16

    .line 347
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 357
    .end local v17           #m:D
    :cond_1
    add-int/lit8 v23, v19, -0x1

    add-int/lit8 v24, v19, -0x1

    aget-wide v24, v20, v24

    add-int/lit8 v26, v19, -0x1

    aget-object v26, v22, v26

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    div-double v24, v24, v26

    aput-wide v24, v21, v23

    .line 358
    add-int/lit8 v16, v19, -0x2

    :goto_2
    if-ltz v16, :cond_2

    .line 359
    aget-wide v23, v20, v16

    aget-object v25, v22, v16

    const/16 v26, 0x2

    aget-wide v25, v25, v26

    add-int/lit8 v27, v16, 0x1

    aget-wide v27, v21, v27

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    aget-object v25, v22, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    div-double v23, v23, v25

    aput-wide v23, v21, v16

    .line 358
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 361
    :cond_2
    return-object v21
.end method
