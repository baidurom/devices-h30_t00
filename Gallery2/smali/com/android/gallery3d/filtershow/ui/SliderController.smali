.class public Lcom/android/gallery3d/filtershow/ui/SliderController;
.super Ljava/lang/Object;
.source "SliderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SliderController"

.field private static mTextSize:I


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentX:F

.field private mCurrentY:F

.field private mHeight:I

.field private mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

.field private mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

.field mOriginalValue:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mToast:Ljava/lang/String;

.field private mValue:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x80

    sput v0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mTextSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mValue:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mOriginalValue:I

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mWidth:I

    .line 34
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mHeight:I

    .line 36
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    .line 42
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 45
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 5

    .prologue
    .line 77
    const/high16 v2, 0x42c8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->getCurrentX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->getCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 78
    .local v0, delta:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mOriginalValue:I

    add-int v1, v2, v0

    .line 79
    .local v1, value:I
    const/16 v2, -0x64

    if-ge v1, v2, :cond_1

    .line 80
    const/16 v1, -0x64

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/ui/SliderController;->setValue(I)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    .line 86
    return v1

    .line 81
    :cond_1
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 82
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public drawToast(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xff

    .line 56
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/gallery3d/filtershow/ui/SliderController;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 60
    .local v0, textWidth:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 61
    .local v1, toastX:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 63
    .local v2, toastY:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 64
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    int-to-float v4, v1

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    int-to-float v4, v1

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 71
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    .end local v0           #textWidth:F
    .end local v1           #toastX:I
    .end local v2           #toastY:I
    :cond_0
    return-void
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCenterY:F

    return v0
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCurrentY:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mWidth:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->UP:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    if-ne v0, v1, :cond_0

    .line 53
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->setNoAction()V

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 166
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/ui/SliderController;->setActionDown(FF)V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->setActionUp()V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->setActionUp()V

    goto :goto_0

    .line 178
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/ui/SliderController;->setActionMove(FF)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mOriginalValue:I

    .line 187
    return-void
.end method

.method public setActionDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCenterX:F

    .line 127
    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCenterY:F

    .line 128
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCurrentX:F

    .line 129
    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCurrentY:F

    .line 130
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->DOWN:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/filtershow/ui/SliderListener;->onTouchDown(FF)V

    .line 134
    :cond_0
    return-void
.end method

.method public setActionMove(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCurrentX:F

    .line 138
    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mCurrentY:F

    .line 139
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->MOVE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 140
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->computeValue()I

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mValue:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/ui/SliderListener;->onNewValue(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public setActionUp()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->UP:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 148
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/SliderController;->computeValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mOriginalValue:I

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/ui/SliderListener;->onTouchUp()V

    .line 152
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mHeight:I

    .line 107
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/filtershow/ui/SliderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    .line 160
    return-void
.end method

.method public setNoAction()V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 156
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mValue:I

    .line 91
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mWidth:I

    .line 103
    return-void
.end method
