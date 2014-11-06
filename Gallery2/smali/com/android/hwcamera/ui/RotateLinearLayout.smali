.class public Lcom/android/hwcamera/ui/RotateLinearLayout;
.super Landroid/view/ViewGroup;
.source "RotateLinearLayout.java"

# interfaces
.implements Lcom/android/hwcamera/ui/Rotatable;


# static fields
.field public static final DOWN:I = 0x2

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x3

.field public static final UP:I


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    .line 25
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x4000

    .line 37
    iget v3, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    if-nez v3, :cond_0

    .line 39
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 62
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 44
    .local v1, saveCount:I
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 45
    .local v2, width:F
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 47
    .local v0, height:F
    iget v3, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 60
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 49
    :pswitch_0
    const/high16 v3, 0x4334

    div-float v4, v2, v5

    div-float v5, v0, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 52
    :pswitch_1
    const/high16 v3, 0x4387

    div-float v4, v0, v5

    div-float v5, v0, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 55
    :pswitch_2
    const/high16 v3, 0x42b4

    div-float v4, v2, v5

    div-float v5, v2, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "paramArrayOfInt"
    .parameter "paramRect"

    .prologue
    const/4 v3, 0x0

    .line 108
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getWidth()I

    move-result v1

    .line 110
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getHeight()I

    move-result v0

    .line 111
    .local v0, height:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 112
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 113
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 114
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 115
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 116
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/ui/RotateLinearLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 118
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v2

    return-object v2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    .line 33
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

    .line 67
    sub-int v1, p4, p2

    .line 68
    .local v1, width:I
    sub-int v0, p5, p3

    .line 70
    .local v0, height:I
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 86
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 87
    .local v0, h:I
    iget v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 103
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setMeasuredDimension(II)V

    .line 104
    return-void

    .line 90
    :pswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/hwcamera/ui/RotateLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 91
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 93
    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/hwcamera/ui/RotateLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 97
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 99
    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/ui/RotateLinearLayout;->mOrientation:I

    .line 128
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->requestLayout()V

    .line 129
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->invalidate()V

    goto :goto_0
.end method
