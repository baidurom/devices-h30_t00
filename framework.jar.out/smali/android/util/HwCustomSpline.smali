.class public final Landroid/util/HwCustomSpline;
.super Ljava/lang/Object;
.source "HwCustomSpline.java"


# static fields
.field private static final CONSTANT_COEF:I = 0x2


# instance fields
.field private mSampleData:[[F

.field private mX:[F

.field private mY:[F

.field private sampleHeight:I


# direct methods
.method private constructor <init>([F[F[[F)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "sampleData"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/HwCustomSpline;->sampleHeight:I

    .line 37
    iput-object p1, p0, Landroid/util/HwCustomSpline;->mX:[F

    .line 38
    iput-object p2, p0, Landroid/util/HwCustomSpline;->mY:[F

    .line 39
    iput-object p3, p0, Landroid/util/HwCustomSpline;->mSampleData:[[F

    .line 40
    array-length v0, p2

    iput v0, p0, Landroid/util/HwCustomSpline;->sampleHeight:I

    .line 41
    return-void
.end method

.method public static createHwCustomSpline([F[F[[F)Landroid/util/HwCustomSpline;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "sampleData"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance v0, Landroid/util/HwCustomSpline;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/HwCustomSpline;-><init>([F[F[[F)V

    return-object v0
.end method

.method private static getCoefF([F[F[F)V
    .locals 4
    .parameter "f"
    .parameter "Y"
    .parameter "h"

    .prologue
    .line 164
    array-length v1, p1

    .line 165
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 166
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aget v3, p1, v0

    sub-float/2addr v2, v3

    aget v3, p2, v0

    div-float/2addr v2, v3

    aput v2, p0, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private static getCoefG([F[F[F[F)V
    .locals 6
    .parameter "g"
    .parameter "lambda"
    .parameter "mu"
    .parameter "f"

    .prologue
    .line 189
    array-length v1, p3

    .line 190
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 191
    const/high16 v2, 0x4040

    aget v3, p1, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p3, v4

    mul-float/2addr v3, v4

    aget v4, p2, v0

    aget v5, p3, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, p0, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private static getCoefH([F[F)V
    .locals 4
    .parameter "h"
    .parameter "X"

    .prologue
    .line 156
    array-length v1, p1

    .line 157
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 158
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aget v3, p1, v0

    sub-float/2addr v2, v3

    aput v2, p0, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private static getCoefM([F[F[F[F)V
    .locals 9
    .parameter "coefM"
    .parameter "lambda"
    .parameter "mu"
    .parameter "g"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    .line 198
    array-length v4, p3

    add-int/lit8 v2, v4, -0x2

    .line 199
    .local v2, n:I
    add-int/lit8 v4, v2, 0x1

    new-array v0, v4, [F

    .line 200
    .local v0, beta:[F
    add-int/lit8 v4, v2, 0x1

    new-array v3, v4, [F

    .line 202
    .local v3, y:[F
    aget v4, p2, v8

    div-float/2addr v4, v7

    aput v4, v0, v8

    .line 203
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 204
    aget v4, p2, v1

    aget v5, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    mul-float/2addr v5, v6

    sub-float v5, v7, v5

    div-float/2addr v4, v5

    aput v4, v0, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    aget v4, p3, v8

    div-float/2addr v4, v7

    aput v4, v3, v8

    .line 208
    const/4 v1, 0x2

    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_1

    .line 209
    aget v4, p3, v1

    aget v5, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v3, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    mul-float/2addr v5, v6

    sub-float v5, v7, v5

    div-float/2addr v4, v5

    aput v4, v3, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_1
    aget v4, v3, v2

    aput v4, p0, v2

    .line 213
    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-lez v1, :cond_2

    .line 214
    aget v4, v3, v1

    aget v5, v0, v1

    add-int/lit8 v6, v1, 0x1

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, p0, v1

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 216
    :cond_2
    return-void
.end method

.method private static getLambda([F[F)V
    .locals 5
    .parameter "lambda"
    .parameter "h"

    .prologue
    .line 172
    array-length v1, p1

    .line 173
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 174
    aget v2, p1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    aget v4, p1, v0

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    aput v2, p0, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private static getMu([F[F)V
    .locals 5
    .parameter "mu"
    .parameter "h"

    .prologue
    .line 180
    array-length v1, p1

    .line 181
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 182
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    aget v4, p1, v0

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    aput v2, p0, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private static interpolationCompute([F[FF)F
    .locals 16
    .parameter "x"
    .parameter "y"
    .parameter "inputX"

    .prologue
    .line 81
    move-object/from16 v0, p0

    array-length v10, v0

    .line 83
    .local v10, sampleLength:I
    new-array v3, v10, [F

    .line 86
    .local v3, h:[F
    new-array v1, v10, [F

    .line 89
    .local v1, f:[F
    new-array v5, v10, [F

    .line 92
    .local v5, lambda:[F
    new-array v7, v10, [F

    .line 95
    .local v7, mu:[F
    new-array v2, v10, [F

    .line 98
    .local v2, g:[F
    new-array v6, v10, [F

    .line 100
    .local v6, m:[F
    const/4 v4, 0x0

    .line 101
    .local v4, index:I
    :goto_0
    add-int/lit8 v11, v10, -0x1

    if-ge v4, v11, :cond_1

    .line 102
    aget v11, p0, v4

    cmpg-float v11, p2, v11

    if-gtz v11, :cond_0

    .line 103
    aget v8, p1, v4

    .local v8, resultY:F
    move v9, v8

    .line 136
    .end local v8           #resultY:F
    .local v9, resultY:F
    :goto_1
    return v9

    .line 107
    .end local v9           #resultY:F
    :cond_0
    aget v11, p0, v4

    cmpl-float v11, p2, v11

    if-lez v11, :cond_2

    add-int/lit8 v11, v4, 0x1

    aget v11, p0, v11

    cmpg-float v11, p2, v11

    if-gez v11, :cond_2

    .line 112
    :cond_1
    add-int/lit8 v11, v10, -0x1

    if-ne v4, v11, :cond_3

    .line 113
    aget v8, p1, v4

    .restart local v8       #resultY:F
    :goto_2
    move v9, v8

    .line 136
    .end local v8           #resultY:F
    .restart local v9       #resultY:F
    goto :goto_1

    .line 101
    .end local v9           #resultY:F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_3
    const/4 v11, 0x0

    add-int/lit8 v12, v10, -0x1

    const/4 v13, 0x0

    aput v13, v6, v12

    aput v13, v6, v11

    .line 118
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v2, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x0

    aget v14, v6, v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v2, v11

    .line 119
    add-int/lit8 v11, v10, -0x2

    add-int/lit8 v12, v10, -0x2

    aget v12, v2, v12

    add-int/lit8 v13, v10, -0x2

    aget v13, v7, v13

    add-int/lit8 v14, v10, -0x1

    aget v14, v6, v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v2, v11

    .line 121
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Landroid/util/HwCustomSpline;->getCoefH([F[F)V

    .line 122
    move-object/from16 v0, p1

    invoke-static {v1, v0, v3}, Landroid/util/HwCustomSpline;->getCoefF([F[F[F)V

    .line 123
    invoke-static {v5, v3}, Landroid/util/HwCustomSpline;->getLambda([F[F)V

    .line 124
    invoke-static {v7, v3}, Landroid/util/HwCustomSpline;->getMu([F[F)V

    .line 125
    invoke-static {v2, v5, v7, v1}, Landroid/util/HwCustomSpline;->getCoefG([F[F[F[F)V

    .line 126
    invoke-static {v6, v5, v7, v2}, Landroid/util/HwCustomSpline;->getCoefM([F[F[F[F)V

    .line 128
    add-int/lit8 v11, v4, 0x1

    aget v11, p0, v11

    sub-float v11, p2, v11

    add-int/lit8 v12, v4, 0x1

    aget v12, p0, v12

    sub-float v12, p2, v12

    mul-float/2addr v11, v12

    aget v12, v3, v4

    const/high16 v13, 0x4000

    aget v14, p0, v4

    sub-float v14, p2, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    aget v12, p1, v4

    mul-float/2addr v11, v12

    aget v12, v3, v4

    aget v13, v3, v4

    mul-float/2addr v12, v13

    aget v13, v3, v4

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    aget v12, p0, v4

    sub-float v12, p2, v12

    aget v13, p0, v4

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    aget v13, v3, v4

    const/high16 v14, 0x4000

    add-int/lit8 v15, v4, 0x1

    aget v15, p0, v15

    sub-float v15, v15, p2

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x1

    aget v13, p1, v13

    mul-float/2addr v12, v13

    aget v13, v3, v4

    aget v14, v3, v4

    mul-float/2addr v13, v14

    aget v14, v3, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    add-int/lit8 v12, v4, 0x1

    aget v12, p0, v12

    sub-float v12, p2, v12

    add-int/lit8 v13, v4, 0x1

    aget v13, p0, v13

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    aget v13, p0, v4

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    aget v13, v6, v4

    mul-float/2addr v12, v13

    aget v13, v3, v4

    aget v14, v3, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    aget v12, p0, v4

    sub-float v12, p2, v12

    aget v13, p0, v4

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x1

    aget v13, p0, v13

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x1

    aget v13, v6, v13

    mul-float/2addr v12, v13

    aget v13, v3, v4

    aget v14, v3, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float v8, v11, v12

    .restart local v8       #resultY:F
    goto/16 :goto_2
.end method


# virtual methods
.method public getInterpolatedValue(FF)F
    .locals 5
    .parameter "level"
    .parameter "sensorValue"

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, brightness:F
    iget v4, p0, Landroid/util/HwCustomSpline;->sampleHeight:I

    new-array v1, v4, [F

    .line 145
    .local v1, brightAtEnvLight:[F
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    iget v4, p0, Landroid/util/HwCustomSpline;->sampleHeight:I

    if-ge v3, v4, :cond_0

    .line 146
    iget-object v4, p0, Landroid/util/HwCustomSpline;->mSampleData:[[F

    aget-object v0, v4, v3

    .line 147
    .local v0, backLights:[F
    iget-object v4, p0, Landroid/util/HwCustomSpline;->mX:[F

    invoke-static {v4, v0, p2}, Landroid/util/HwCustomSpline;->interpolationCompute([F[FF)F

    move-result v4

    aput v4, v1, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v0           #backLights:[F
    :cond_0
    iget-object v4, p0, Landroid/util/HwCustomSpline;->mY:[F

    invoke-static {v4, v1, p1}, Landroid/util/HwCustomSpline;->interpolationCompute([F[FF)F

    move-result v2

    .line 152
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, str:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
