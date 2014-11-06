.class Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBarDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressBarDrawable"


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mBlockSizes:[I

.field private mCleanBlock:Landroid/graphics/drawable/Drawable;

.field private mDirtyBlock:Landroid/graphics/drawable/Drawable;

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[II)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "blockSizes"
    .parameter "padding"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    .local v0, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    .line 28
    iput-object p2, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    .line 29
    iput p4, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPadding:I

    .line 30
    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    .line 31
    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, xoffset:I
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->getLevel()I

    move-result v2

    .line 68
    .local v2, level:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 69
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 70
    .local v4, yoffset:I
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v4           #yoffset:I
    :cond_0
    move v0, v2

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v5

    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 77
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 78
    .restart local v4       #yoffset:I
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v4           #yoffset:I
    :cond_1
    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 6

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, width:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v3

    .local v1, len:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    iget-object v4, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 48
    const-string v3, "ProgressBarDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntrinsicWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x3

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 36
    const-string v0, "ProgressBarDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLevelChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->invalidateSelf()V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    return-void
.end method
