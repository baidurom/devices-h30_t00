.class Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;
.super Landroid/graphics/drawable/Drawable;
.source "TargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/TargetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableWithAlpha"
.end annotation


# instance fields
.field private mAlpha:F

.field private mRealDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "realDrawable"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 56
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 60
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 71
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    return-void
.end method
