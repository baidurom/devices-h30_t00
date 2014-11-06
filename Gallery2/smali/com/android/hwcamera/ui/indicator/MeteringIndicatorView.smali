.class public Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;
.super Landroid/view/View;
.source "MeteringIndicatorView.java"

# interfaces
.implements Lcom/android/hwcamera/ui/indicator/FocusIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .parameter "bTrue"

    .prologue
    .line 63
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 48
    const v0, 0x7f0201a9

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->setDrawable(I)V

    .line 49
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0201a9

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->setDrawable(I)V

    .line 39
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 43
    const v0, 0x7f0201a9

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->setDrawable(I)V

    .line 44
    return-void
.end method
