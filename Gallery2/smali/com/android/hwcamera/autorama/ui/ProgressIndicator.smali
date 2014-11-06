.class public Lcom/android/hwcamera/autorama/ui/ProgressIndicator;
.super Ljava/lang/Object;
.source "ProgressIndicator.java"


# static fields
.field public static final BLOCK_NUMBERS:I = 0xf

.field public static final BLOCK_NUMBERS_SINGLE3D:I = 0x2

.field public static final MAV_CAPTURE_NUM:I = 0xf

.field private static final TAG:Ljava/lang/String; = "ProgressIndicator"

.field public static final TYPE_MAV:I = 0x1

.field public static final TYPE_PANO:I = 0x2

.field public static final TYPE_SINGLE3D:I = 0x3

.field private static sIndicatorMarginLong:I

.field private static sIndicatorMarginShort:I


# instance fields
.field private final mBackPanoBlockSizes:[I

.field private mBlockPadding:I

.field private final mFrontPanoBlockSizes:[I

.field private final mMavBlockSizes:[I

.field private mProgressBars:Landroid/widget/ImageView;

.field private mProgressView:Landroid/view/View;

.field private final mSingle3DBlockSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginLong:I

    .line 42
    sput v0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginShort:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 10
    .parameter "activity"
    .parameter "indicatorType"
    .parameter "CameraId"

    .prologue
    const/high16 v9, 0x4000

    const/16 v8, 0xf

    const/4 v7, 0x2

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f00

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    .line 30
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mMavBlockSizes:[I

    .line 32
    new-array v3, v7, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    .line 33
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mFrontPanoBlockSizes:[I

    .line 37
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    .line 46
    const v3, 0x7f1001ed

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    .line 47
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    const v3, 0x7f1001ef

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 52
    .local v2, scale:F
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 53
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_0

    .line 54
    iget v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mMavBlockSizes:[I

    iget-object v4, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mMavBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v3, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mMavBlockSizes:[I

    iget v7, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->getIndicatorMargin()V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setOrientation(I)V

    .line 94
    return-void

    .line 60
    :cond_2
    if-ne p2, v7, :cond_6

    .line 61
    invoke-static {p3}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_3

    .line 63
    iget v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    .line 64
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 65
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    iget-object v4, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v3, v0

    .line 66
    const-string v3, "ProgressIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPanoBlockSizes[i]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    .end local v0           #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    iget v7, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 72
    :cond_4
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_5

    .line 73
    iget v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    add-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    .line 74
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mFrontPanoBlockSizes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 75
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBackPanoBlockSizes:[I

    iget-object v4, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mFrontPanoBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    const/high16 v5, 0x4120

    mul-float/2addr v4, v5

    add-float/2addr v4, v9

    float-to-int v4, v4

    aput v4, v3, v0

    .line 76
    const-string v3, "ProgressIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPanoBlockSizes[i]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mFrontPanoBlockSizes:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 80
    .end local v0           #i:I
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mFrontPanoBlockSizes:[I

    iget v7, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 82
    :cond_6
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 83
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_7

    .line 84
    iget v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    .line 85
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v7, :cond_7

    .line 86
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    iget-object v4, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v3, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 89
    .end local v0           #i:I
    :cond_7
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    iget v7, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/hwcamera/autorama/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 28
    nop

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_3
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getIndicatorMargin()V
    .locals 4

    .prologue
    .line 107
    sget v1, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginLong:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginShort:I

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginLong:I

    .line 110
    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginShort:I

    .line 112
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v1, "ProgressIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIndicatorMargin: sIndicatorMarginLong = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginLong:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sIndicatorMarginShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginShort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 118
    .local v1, progressViewLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .local v2, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 120
    .local v0, activityOrientation:I
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    if-eqz p1, :cond_1

    const/16 v3, 0xb4

    if-eq p1, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_1

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_2

    .line 123
    :cond_1
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v6, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginShort:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    :goto_0
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 132
    return-void

    .line 125
    :cond_2
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v6, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->sIndicatorMarginLong:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 102
    const-string v0, "ProgressIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 104
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method
