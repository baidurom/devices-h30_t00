.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final DEFAULT_RELATIVE:I = -0x80000000

.field private static LAYOUT_DIRECTION_UNDEFINED:I


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private initialLeftMargin:I

.field private initialRightMargin:I

.field private layoutDirection:I

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5873
    const/4 v0, -0x1

    sput v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v0, -0x8000

    .line 5926
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5853
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5861
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5876
    sget v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 5927
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 5887
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 5853
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5861
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5876
    sget v2, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 5889
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5890
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 5894
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 5896
    .local v1, margin:I
    if-ltz v1, :cond_0

    .line 5897
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5898
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5899
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5900
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5916
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 5917
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 5919
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5920
    return-void

    .line 5902
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5904
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5906
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5908
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5910
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5912
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/high16 v0, -0x8000

    .line 5955
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5853
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5861
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5876
    sget v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 5956
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/high16 v0, -0x8000

    .line 5934
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 5853
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5861
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5876
    sget v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 5935
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5936
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5938
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5939
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5940
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5941
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5942
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5943
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 5945
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 5946
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 5948
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 5949
    return-void
.end method


# virtual methods
.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 6098
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    return v0
.end method

.method public getMarginEnd()I
    .locals 2

    .prologue
    .line 6057
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6063
    :goto_0
    return v0

    .line 6058
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    packed-switch v0, :pswitch_data_0

    .line 6063
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6060
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 6058
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getMarginStart()I
    .locals 2

    .prologue
    .line 6028
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6034
    :goto_0
    return v0

    .line 6029
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    packed-switch v0, :pswitch_data_0

    .line 6034
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 6031
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6128
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarginRelative()Z
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 6076
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 6136
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    const v5, -0xff01

    move-object v0, p2

    #calls: Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->access$500(Landroid/graphics/Canvas;IIIII)V

    .line 6141
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2
    .parameter "layoutDirection"

    .prologue
    const/high16 v1, -0x8000

    .line 6107
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 6109
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6122
    :goto_0
    return-void

    .line 6111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 6118
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v1, :cond_3

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    :goto_1
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6119
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v1, :cond_4

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    :goto_2
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6113
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    :goto_3
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6114
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    :goto_4
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6113
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    goto :goto_3

    .line 6114
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    goto :goto_4

    .line 6118
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    goto :goto_1

    .line 6119
    :cond_4
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    goto :goto_2

    .line 6111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 6086
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6089
    :goto_0
    return-void

    .line 6088
    :cond_0
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    goto :goto_0
.end method

.method public setMarginEnd(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 6046
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6047
    return-void
.end method

.method public setMarginStart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 6017
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6018
    return-void
.end method

.method public setMargins(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5974
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5975
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5976
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5977
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5978
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 5979
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 5980
    return-void
.end method

.method public setMarginsRelative(IIII)V
    .locals 1
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 6001
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6002
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6003
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6004
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6005
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 6006
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 6007
    return-void
.end method
