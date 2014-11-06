.class public Lcom/android/hwcamera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/android/hwcamera/ui/Rotatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field protected mChild:Landroid/view/View;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOrientation:I

.field private mOriginOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 51
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 52
    sget-object v1, Lcom/android/hwcamera/R$styleable;->RotateLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOriginOrientation:I

    .line 55
    iget v1, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOriginOrientation:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 122
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 123
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 150
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    .line 127
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    .line 128
    .local v0, h:I
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 146
    :goto_1
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 147
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 130
    :sswitch_0
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 133
    :sswitch_1
    int-to-float v2, v0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 136
    :sswitch_2
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 139
    :sswitch_3
    int-to-float v2, v1

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 93
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    .line 95
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    .line 96
    .local v0, h:I
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 115
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v2}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 117
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 98
    .restart local v0       #h:I
    .restart local v1       #w:I
    :sswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 101
    :sswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 104
    :sswitch_2
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 107
    :sswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 224
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 64
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 68
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 73
    sub-int v1, p4, p2

    .line 74
    .local v1, width:I
    sub-int v0, p5, p3

    .line 75
    .local v0, height:I
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 78
    :sswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 82
    :sswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 155
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 156
    .local v0, h:I
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 174
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 176
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 177
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 199
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 201
    :cond_0
    return-void

    .line 159
    :sswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/hwcamera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 160
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 162
    goto :goto_0

    .line 165
    :sswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/hwcamera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 166
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 168
    goto :goto_0

    .line 179
    :sswitch_2
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 180
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 183
    :sswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 187
    :sswitch_4
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 188
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 191
    :sswitch_5
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 192
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 177
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 211
    iget v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOriginOrientation:I

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x168

    .line 213
    iget v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/ui/RotateLayout;->mOrientation:I

    .line 215
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method
