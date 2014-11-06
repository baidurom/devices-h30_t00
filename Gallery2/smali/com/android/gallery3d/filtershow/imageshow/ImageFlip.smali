.class public Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageFlip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageFlip$1;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFlip"

.field private static final MIN_FLICK_DIST_FOR_FLIP:F = 0.1f

.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 34
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 38
    return-void
.end method

.method private getScaledMinFlick()F
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalDisplayBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 135
    .local v0, disp:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalScale()F

    move-result v3

    div-float v1, v2, v3

    .line 137
    .local v1, scaled:F
    return v1
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xff

    .line 142
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 144
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 145
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 146
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasRotated90()Z
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalRotation()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->constrainedRotation(F)I

    move-result v0

    .line 56
    .local v0, rot:I
    div-int/lit8 v1, v0, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 130
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 131
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 52
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 63
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    sub-float v0, v7, p1

    .line 64
    .local v0, diffx:F
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    sub-float v1, v7, p2

    .line 65
    .local v1, diffy:F
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getScaledMinFlick()F

    move-result v4

    .line 66
    .local v4, flick:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->hasRotated90()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    move v6, v0

    .line 68
    .local v6, temp:F
    move v0, v1

    .line 69
    move v1, v6

    .line 71
    .end local v6           #temp:F
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 72
    .local v2, distanceX:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 73
    .local v3, distanceY:F
    cmpg-float v7, v2, v4

    if-gez v7, :cond_1

    cmpg-float v7, v3, v4

    if-gez v7, :cond_1

    .line 119
    :goto_0
    return-void

    .line 76
    :cond_1
    cmpl-float v7, v2, v3

    if-ltz v7, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v5

    .line 79
    .local v5, flip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v7, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip$1;->$SwitchMap$com$android$gallery3d$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 93
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 96
    :goto_1
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    goto :goto_0

    .line 81
    :pswitch_0
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 82
    goto :goto_1

    .line 84
    :pswitch_1
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 85
    goto :goto_1

    .line 87
    :pswitch_2
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 88
    goto :goto_1

    .line 90
    :pswitch_3
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 91
    goto :goto_1

    .line 99
    .end local v5           #flip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v5

    .line 100
    .restart local v5       #flip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v7, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip$1;->$SwitchMap$com$android$gallery3d$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 114
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 117
    :goto_2
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    goto :goto_0

    .line 102
    :pswitch_4
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 103
    goto :goto_2

    .line 105
    :pswitch_5
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 106
    goto :goto_2

    .line 108
    :pswitch_6
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 109
    goto :goto_2

    .line 111
    :pswitch_7
    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 112
    goto :goto_2

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 100
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 125
    return-void
.end method
