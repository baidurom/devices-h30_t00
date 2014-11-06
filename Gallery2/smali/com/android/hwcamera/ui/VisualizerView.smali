.class public Lcom/android/hwcamera/ui/VisualizerView;
.super Landroid/view/View;
.source "VisualizerView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BOX_HEIGHT:I = 0x0

.field private static final DEBUFF_RATIO:F = 0.3f

.field private static final DELTA_RATIO:F = 0.1f

.field private static final REFASH:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsEffective:Z

.field private mMaxIndex:I

.field private mPreviousVisualizerBytes:[F

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mVisualizerBytes:[F

.field private mVisualizerDataUpdated:Z

.field private mVisualizerEdgePaint:Landroid/graphics/Paint;

.field private mVisualizerNum:I

.field private mVisualizerPaint:Landroid/graphics/Paint;

.field private mVisualizerSpacing:I

.field private mVisualizerStarted:Z

.field private mVisualizerWidth:I

.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/hwcamera/ui/VisualizerView;->BOX_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    .line 44
    new-instance v0, Lcom/android/hwcamera/ui/VisualizerView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/VisualizerView$1;-><init>(Lcom/android/hwcamera/ui/VisualizerView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mHandler:Landroid/os/Handler;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/VisualizerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    .line 44
    new-instance v0, Lcom/android/hwcamera/ui/VisualizerView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/VisualizerView$1;-><init>(Lcom/android/hwcamera/ui/VisualizerView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/VisualizerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/hwcamera/ui/VisualizerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerDataUpdated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/ui/VisualizerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/ui/VisualizerView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private copyFft([F)V
    .locals 5
    .parameter "fft"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 181
    :cond_0
    return-void

    .line 175
    :cond_1
    iget v3, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    array-length v4, p1

    sub-int v2, v3, v4

    .line 177
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    if-ge v1, v3, :cond_0

    .line 178
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    iget v4, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    aget v0, v3, v4

    .line 179
    .local v0, currentValue:F
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    aput v0, v3, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0           #currentValue:F
    :cond_2
    sub-int v3, v1, v2

    aget v0, p1, v3

    goto :goto_1
.end method

.method private drawSmallBox(Landroid/graphics/Canvas;III)V
    .locals 16
    .parameter "canvas"
    .parameter "left"
    .parameter "boxHeight"
    .parameter "height"

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/hwcamera/ui/VisualizerView;->BOX_HEIGHT:I

    add-int/lit8 v1, v1, 0x1

    div-int v11, p3, v1

    .line 225
    .local v11, length:I
    :goto_0
    if-nez v11, :cond_0

    const/4 v11, 0x1

    .line 226
    :cond_0
    move/from16 v0, p4

    int-to-float v5, v0

    .line 227
    .local v5, boxBottom:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerWidth:I

    add-int v1, v1, p2

    int-to-float v4, v1

    .line 229
    .local v4, boxRight:F
    add-int/lit8 v9, v11, -0x1

    .local v9, i:I
    const/4 v10, 0x2

    .local v10, j:I
    :goto_1
    if-ltz v9, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    .line 231
    .local v13, visualizerPaintAlpha:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 232
    .local v12, visualizerEdgePainttAlpha:I
    const/4 v1, 0x4

    if-gt v10, v1, :cond_2

    int-to-double v1, v10

    const-wide v14, 0x3fc999999999999aL

    mul-double/2addr v1, v14

    int-to-double v14, v13

    mul-double/2addr v1, v14

    double-to-int v8, v1

    .line 233
    .local v8, currentVisualizerPaintAlpha:I
    :goto_2
    const/4 v1, 0x4

    if-gt v10, v1, :cond_3

    int-to-double v1, v10

    const-wide v14, 0x3fc999999999999aL

    mul-double/2addr v1, v14

    int-to-double v14, v12

    mul-double/2addr v1, v14

    double-to-int v7, v1

    .line 234
    .local v7, currentVisualizerEdgePainttAlpha:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    sget v1, Lcom/android/hwcamera/ui/VisualizerView;->BOX_HEIGHT:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v9

    sub-int v1, p4, v1

    int-to-float v5, v1

    .line 237
    sget v1, Lcom/android/hwcamera/ui/VisualizerView;->BOX_HEIGHT:I

    int-to-float v1, v1

    sub-float v3, v5, v1

    .line 238
    .local v3, boxTop:F
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 223
    .end local v3           #boxTop:F
    .end local v4           #boxRight:F
    .end local v5           #boxBottom:F
    .end local v7           #currentVisualizerEdgePainttAlpha:I
    .end local v8           #currentVisualizerPaintAlpha:I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #length:I
    .end local v12           #visualizerEdgePainttAlpha:I
    .end local v13           #visualizerPaintAlpha:I
    :cond_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .restart local v4       #boxRight:F
    .restart local v5       #boxBottom:F
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v11       #length:I
    .restart local v12       #visualizerEdgePainttAlpha:I
    .restart local v13       #visualizerPaintAlpha:I
    :cond_2
    move v8, v13

    .line 232
    goto :goto_2

    .restart local v8       #currentVisualizerPaintAlpha:I
    :cond_3
    move v7, v12

    .line 233
    goto :goto_3

    .line 243
    .end local v8           #currentVisualizerPaintAlpha:I
    .end local v12           #visualizerEdgePainttAlpha:I
    .end local v13           #visualizerPaintAlpha:I
    :cond_4
    return-void
.end method

.method private effectFft()V
    .locals 11

    .prologue
    .line 119
    const/4 v6, 0x0

    .line 120
    .local v6, sum:F
    const/4 v1, 0x0

    .line 121
    .local v1, current:F
    const/4 v4, 0x0

    .line 122
    .local v4, max:F
    const/4 v5, 0x0

    .line 124
    .local v5, maxIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    if-ge v3, v7, :cond_1

    .line 125
    iget-object v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    aget v1, v7, v3

    .line 126
    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    .line 127
    move v4, v1

    .line 128
    move v5, v3

    .line 130
    :cond_0
    add-float/2addr v6, v1

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 133
    .local v0, avg:F
    float-to-double v7, v4

    const-wide v9, 0x3f9eb851eb851eb8L

    cmpg-double v7, v7, v9

    if-gez v7, :cond_3

    .line 134
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mIsEffective:Z

    .line 144
    :cond_2
    return-void

    .line 137
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mIsEffective:Z

    .line 138
    const v7, 0x3f333333

    sub-float v2, v7, v0

    .line 139
    .local v2, deta:F
    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_4

    const/4 v2, 0x0

    .line 140
    :cond_4
    iput v5, p0, Lcom/android/hwcamera/ui/VisualizerView;->mMaxIndex:I

    .line 141
    const/4 v3, 0x0

    :goto_1
    iget v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    if-ge v3, v7, :cond_2

    .line 142
    iget-object v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    aget v8, v7, v3

    add-float/2addr v8, v2

    aput v8, v7, v3

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v6, -0x100

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    sget-object v1, Lcom/android/hwcamera/R$styleable;->VisualizerView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerWidth:I

    .line 77
    invoke-static {v3}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerSpacing:I

    .line 79
    const/4 v1, 0x3

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    iget v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    .line 83
    iget v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mPreviousVisualizerBytes:[F

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 95
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerEdgePaint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2, v4, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 101
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/VisualizerView;->invalidate()V

    .line 257
    return-void
.end method

.method public effectVisualizerRatio(FIZ)F
    .locals 9
    .parameter "ratio"
    .parameter "index"
    .parameter "flag"

    .prologue
    const/high16 v8, 0x447a

    const/high16 v7, 0x42c8

    const v6, 0x3f666666

    const v5, 0x3d4ccccd

    const v3, 0x3dcccccd

    .line 150
    iget-boolean v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mIsEffective:Z

    if-nez v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mPreviousVisualizerBytes:[F

    aget v1, v1, p2

    const v2, 0x3e99999a

    sub-float p1, v1, v2

    .line 152
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    add-float/2addr p1, v3

    .line 156
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mMaxIndex:I

    sub-int v1, p2, v1

    mul-int/lit16 v1, v1, 0xb4

    iget v2, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x5a

    .line 157
    .local v0, s:I
    if-eqz p3, :cond_6

    .line 158
    float-to-double v1, p1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float p1, v1

    .line 163
    :goto_1
    float-to-double v1, p1

    const-wide v3, 0x3feccccccccccccdL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    add-float p1, v1, v6

    .line 164
    :cond_1
    :goto_2
    float-to-double v1, p1

    const-wide v3, 0x3fa999999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    add-float p1, v1, v5

    .line 166
    :cond_2
    :goto_3
    return p1

    .line 152
    .end local v0           #s:I
    :cond_3
    sub-float/2addr p1, v3

    goto :goto_0

    .line 153
    :cond_4
    iget-boolean v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerDataUpdated:Z

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_5

    add-float/2addr p1, v3

    :goto_4
    goto :goto_0

    :cond_5
    sub-float/2addr p1, v3

    goto :goto_4

    .line 160
    .restart local v0       #s:I
    :cond_6
    float-to-double v1, p1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float p1, v1

    goto :goto_1

    .line 163
    :cond_7
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    add-float p1, v1, v6

    goto :goto_2

    .line 164
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->random:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    add-float p1, v1, v5

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/VisualizerView;->getHeight()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 190
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/VisualizerView;->getWidth()I

    move-result v5

    .line 197
    .local v5, width:I
    iget-object v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mText:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 198
    iget-object v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/hwcamera/ui/VisualizerView;->mText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v6, v7

    .line 199
    .local v6, wordWidth:I
    sub-int v7, v5, v6

    div-int/lit8 v1, v7, 0x2

    .line 200
    .local v1, drawTextX:I
    iget-object v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mText:Ljava/lang/String;

    int-to-float v8, v1

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/hwcamera/ui/VisualizerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 204
    .end local v1           #drawTextX:I
    .end local v6           #wordWidth:I
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    if-ge v3, v7, :cond_1

    .line 207
    iget v7, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerWidth:I

    iget v8, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v3

    iget v8, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerSpacing:I

    add-int v4, v7, v8

    .line 208
    .local v4, left:I
    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    aget v8, v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v3, v9}, Lcom/android/hwcamera/ui/VisualizerView;->effectVisualizerRatio(FIZ)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 209
    .local v0, boxHeight:I
    invoke-direct {p0, p1, v4, v0, v2}, Lcom/android/hwcamera/ui/VisualizerView;->drawSmallBox(Landroid/graphics/Canvas;III)V

    .line 210
    sub-int v7, v5, v4

    iget v8, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerWidth:I

    sub-int v4, v7, v8

    .line 211
    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    aget v8, v8, v3

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v3, v9}, Lcom/android/hwcamera/ui/VisualizerView;->effectVisualizerRatio(FIZ)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 213
    invoke-direct {p0, p1, v4, v0, v2}, Lcom/android/hwcamera/ui/VisualizerView;->drawSmallBox(Landroid/graphics/Canvas;III)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v0           #boxHeight:I
    .end local v4           #left:I
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mText:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/VisualizerView;->invalidate()V

    goto :goto_0
.end method

.method public updateVisualizer([F)V
    .locals 5
    .parameter "fft"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerBytes:[F

    iget-object v1, p0, Lcom/android/hwcamera/ui/VisualizerView;->mPreviousVisualizerBytes:[F

    iget v2, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerNum:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/VisualizerView;->copyFft([F)V

    .line 110
    invoke-direct {p0}, Lcom/android/hwcamera/ui/VisualizerView;->effectFft()V

    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/ui/VisualizerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    :cond_1
    iput-boolean v3, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerStarted:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/hwcamera/ui/VisualizerView;->mVisualizerDataUpdated:Z

    .line 114
    return-void
.end method
