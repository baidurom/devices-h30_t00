.class public Lcom/android/hwcamera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"

# interfaces
.implements Lcom/android/hwcamera/ui/LayoutChangeNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static ASPECT_RATIO:D = 0.0

.field private static final TAG:Ljava/lang/String; = "CAM_preview"


# instance fields
.field private mLayoutChangeHelper:Lcom/android/hwcamera/ui/LayoutChangeHelper;

.field private mListener:Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide v0, 0x3ff5555555555555L

    sput-wide v0, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-wide v0, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 59
    new-instance v0, Lcom/android/hwcamera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/android/hwcamera/ui/LayoutChangeHelper;

    .line 60
    return-void
.end method

.method public static getAspect()D
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    return-wide v0
.end method

.method public static setAspect(D)V
    .locals 0
    .parameter "aspect"

    .prologue
    .line 52
    sput-wide p0, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    .line 53
    return-void
.end method


# virtual methods
.method public fadeOutBorder()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 65
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v2, :cond_1

    .line 66
    const v2, 0x7f1001e2

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 67
    .local v0, faceViewStub:Landroid/view/ViewStub;
    const v2, 0x7f1001e4

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 71
    .local v1, targetViewStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 74
    :cond_0
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 78
    .end local v0           #faceViewStub:Landroid/view/ViewStub;
    .end local v1           #targetViewStub:Landroid/view/ViewStub;
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 79
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/android/hwcamera/ui/LayoutChangeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/ui/LayoutChangeHelper;->onLayout(ZIIII)V

    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v12, 0x4000

    const-wide/high16 v10, 0x3fe0

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 106
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 109
    .local v1, previewHeight:I
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 110
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 113
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 114
    sub-int/2addr v1, v3

    .line 116
    int-to-double v4, v2

    int-to-double v6, v1

    sget-wide v8, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 117
    int-to-double v4, v1

    sget-wide v6, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v2, v4

    .line 123
    :goto_0
    add-int/2addr v2, v0

    .line 124
    add-int/2addr v1, v3

    .line 127
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 129
    return-void

    .line 119
    :cond_0
    int-to-double v4, v2

    sget-wide v6, Lcom/android/hwcamera/PreviewFrameLayout;->ASPECT_RATIO:D

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mListener:Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mListener:Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 138
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 4
    .parameter "ratio"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 82
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    cmpl-double v0, p1, v2

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    cmpg-double v0, p1, v2

    if-gez v0, :cond_3

    .line 87
    :cond_2
    div-double p1, v2, p1

    .line 89
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/PreviewFrameLayout;->getAspect()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_4

    .line 90
    invoke-static {p1, p2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspect(D)V

    .line 91
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->requestLayout()V

    .line 93
    :cond_4
    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/android/hwcamera/ui/LayoutChangeHelper;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/LayoutChangeHelper;->setOnLayoutChangeListener(Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;)V

    .line 144
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mListener:Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;

    .line 133
    return-void
.end method

.method public showBorder(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 97
    return-void
.end method
