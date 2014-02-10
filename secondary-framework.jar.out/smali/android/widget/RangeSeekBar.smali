.class public Landroid/widget/RangeSeekBar;
.super Landroid/widget/SeekBar;
.source "RangeSeekBar.java"


# instance fields
.field private mRangeHigh:I

.field private mRangeLow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Landroid/widget/RangeSeekBar;->mRangeLow:I

    .line 17
    iput v0, p0, Landroid/widget/RangeSeekBar;->mRangeHigh:I

    .line 29
    return-void
.end method


# virtual methods
.method setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 50
    move v0, p1

    .line 52
    .local v0, p:I
    iget v1, p0, Landroid/widget/RangeSeekBar;->mRangeLow:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/widget/RangeSeekBar;->mRangeLow:I

    if-ge v0, v1, :cond_1

    .line 53
    iget v0, p0, Landroid/widget/RangeSeekBar;->mRangeLow:I

    .line 58
    :cond_0
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 59
    return-void

    .line 54
    :cond_1
    iget v1, p0, Landroid/widget/RangeSeekBar;->mRangeHigh:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/RangeSeekBar;->mRangeHigh:I

    if-le v0, v1, :cond_0

    .line 55
    iget v0, p0, Landroid/widget/RangeSeekBar;->mRangeHigh:I

    goto :goto_0
.end method

.method public setRange(II)V
    .locals 3
    .parameter "low"
    .parameter "high"

    .prologue
    .line 40
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-le p1, p2, :cond_0

    .line 41
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Param error: low="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", high="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput p1, p0, Landroid/widget/RangeSeekBar;->mRangeLow:I

    .line 45
    iput p2, p0, Landroid/widget/RangeSeekBar;->mRangeHigh:I

    .line 46
    return-void
.end method
