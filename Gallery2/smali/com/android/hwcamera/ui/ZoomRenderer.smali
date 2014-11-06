.class public Lcom/android/hwcamera/ui/ZoomRenderer;
.super Lcom/android/hwcamera/ui/OverlayRenderer;
.source "ZoomRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ui/ZoomRenderer$1;,
        Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;
    }
.end annotation


# static fields
.field private static final HIDE_RENDER:I = 0x0

.field private static final HIDE_RENDER_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CAM_Zoom"

.field private static final ZOOM_OUT_EDGE:I = 0x3c


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircleSize:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mHandler:Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

.field private mInnerStroke:I

.field private mMaxCircle:I

.field private mMaxZoom:I

.field private mMinCircle:I

.field private mMinZoom:I

.field private mOritation:I

.field private mOuterStroke:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mZoomFraction:I

.field private mZoomIndex:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomSig:I


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/hwcamera/ui/OverlayRenderer;-><init>()V

    .line 58
    iput v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mOritation:I

    .line 61
    iput v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomIndex:I

    .line 195
    new-instance v1, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;-><init>(Lcom/android/hwcamera/ui/ZoomRenderer;Lcom/android/hwcamera/ui/ZoomRenderer$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mHandler:Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

    .line 66
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mInnerStroke:I

    .line 78
    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mOuterStroke:I

    .line 79
    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinCircle:I

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ui/ZoomRenderer;->setVisible(Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mHandler:Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;->removeMessages(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setVisible(Z)V

    .line 188
    return-void
.end method

.method public hideDelay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mHandler:Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;->removeMessages(I)V

    .line 192
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mHandler:Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    return-void
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method public layout(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/ui/OverlayRenderer;->layout(IIII)V

    .line 113
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterX:I

    .line 114
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterY:I

    .line 115
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    .line 116
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    .line 117
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    iget-object v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mInnerStroke:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mOuterStroke:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomSig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomFraction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, txt:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 139
    iget-object v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x5a

    .line 140
    .local v0, rotation:I
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mOritation:I

    neg-int v2, v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 141
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterX:I

    iget-object v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCenterY:I

    iget-object v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    return-void
.end method

.method public onOritationChanged(I)V
    .locals 0
    .parameter "oritation"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mOritation:I

    .line 86
    return-void
.end method

.method public onScale(I)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoom(I)V

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->onScaleBegin()Z

    .line 166
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->hideDelay()V

    .line 167
    return-void
.end method

.method public onScaleBegin()Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->show()V

    .line 177
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->update()V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomRenderer;->hide()V

    .line 183
    return-void
.end method

.method public onScaleGesture(Landroid/view/ScaleGestureDetector;)I
    .locals 6
    .parameter "detector"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 147
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 148
    .local v1, sf:F
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v0, v2

    .line 149
    .local v0, circle:F
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinCircle:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 150
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 151
    float-to-int v2, v0

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCircleSize:I

    if-eq v2, v3, :cond_0

    .line 152
    float-to-int v2, v0

    iput v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCircleSize:I

    .line 153
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinZoom:I

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCircleSize:I

    iget v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinCircle:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxZoom:I

    iget v5, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    iget v5, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinCircle:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomIndex:I

    .line 154
    iget-object v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomRatios:Ljava/util/List;

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 156
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomIndex:I

    return v2
.end method

.method public setZoom(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/ui/OverlayRenderer;->mOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RenderOverlay;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/OverlayRenderer;->mOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RenderOverlay;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/ui/OverlayRenderer;->mOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/RenderOverlay;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/ui/OverlayRenderer;->mOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/RenderOverlay;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/hwcamera/ui/ZoomRenderer;->layout(IIII)V

    .line 100
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinCircle:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxCircle:I

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinCircle:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxZoom:I

    iget v3, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mCircleSize:I

    .line 101
    iput p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomIndex:I

    .line 102
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .parameter "zoomMaxIndex"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMaxZoom:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mMinZoom:I

    .line 92
    return-void
.end method

.method public setZoomRatios(Ljava/util/List;)V
    .locals 0
    .parameter "ratios"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomRatios:Ljava/util/List;

    .line 213
    return-void
.end method

.method public setZoomValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 105
    div-int/lit8 p1, p1, 0xa

    .line 106
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomSig:I

    .line 107
    rem-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mZoomFraction:I

    .line 108
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomRenderer;->mHandler:Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer$MainHandler;->removeMessages(I)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->setVisible(Z)V

    .line 173
    return-void
.end method
