.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVerticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 52
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter "verticalAlignment"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 59
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 116
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 121
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 126
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 99
    .local v6, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p6

    move/from16 v2, p8

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/DynamicDrawableSpan;->getSpanTransY(IIIII)I

    move-result v7

    .line 105
    .local v7, transY:I
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v7, v0

    .line 109
    :cond_0
    int-to-float v0, v7

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    return-void
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 84
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 85
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 87
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 88
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 91
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method

.method protected getSpanTransY(IIIII)I
    .locals 1
    .parameter "textViewTop"
    .parameter "textViewBottom"
    .parameter "spanTop"
    .parameter "spanBottom"
    .parameter "baseline"

    .prologue
    .line 133
    sub-int v0, p2, p4

    return v0
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    return v0
.end method
