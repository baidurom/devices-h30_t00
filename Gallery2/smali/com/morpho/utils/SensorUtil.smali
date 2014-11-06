.class public Lcom/morpho/utils/SensorUtil;
.super Ljava/lang/Object;
.source "SensorUtil.java"


# static fields
.field private static final EPSILON:D = 1.0E-8

.field private static final NS2S:F = 1.0E-9f

.field private static final cmat_000:[F

.field private static final cmat_090:[F

.field private static final cmat_180:[F

.field private static final cmat_270:[F

.field private static final mat1:[F

.field private static final mat2:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 11
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/morpho/utils/SensorUtil;->mat1:[F

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/morpho/utils/SensorUtil;->mat2:[F

    .line 22
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/morpho/utils/SensorUtil;->cmat_000:[F

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/morpho/utils/SensorUtil;->cmat_090:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/morpho/utils/SensorUtil;->cmat_180:[F

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/morpho/utils/SensorUtil;->cmat_270:[F

    return-void

    .line 11
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 16
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 22
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 27
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 32
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 37
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAverage([FLjava/util/ArrayList;)Z
    .locals 9
    .parameter "dst_value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/ArrayList",
            "<[F>;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, src_value_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    const/4 v5, 0x0

    .line 108
    :goto_0
    return v5

    .line 93
    :cond_1
    array-length v5, p0

    new-array v3, v5, [D

    .line 96
    .local v3, total:[D
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 99
    .local v4, value:[F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, p0

    if-ge v1, v5, :cond_2

    .line 100
    aget-wide v5, v3, v1

    aget v7, v4, v1

    float-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v3, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    .end local v1           #j:I
    .end local v4           #value:[F
    :cond_3
    if-lez v2, :cond_4

    .line 104
    const/4 v0, 0x0

    :goto_3
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 105
    aget-wide v5, v3, v0

    int-to-double v7, v2

    div-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p0, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 108
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static getDeltaRotationVector([F[FJ)V
    .locals 12
    .parameter "dst_vector"
    .parameter "values"
    .parameter "diff_time"

    .prologue
    .line 46
    long-to-float v8, p2

    const v9, 0x3089705f

    mul-float v4, v8, v9

    .line 47
    .local v4, dT:F
    const/4 v8, 0x0

    aget v0, p1, v8

    .line 48
    .local v0, axisX:F
    const/4 v8, 0x1

    aget v1, p1, v8

    .line 49
    .local v1, axisY:F
    const/4 v8, 0x2

    aget v2, p1, v8

    .line 51
    .local v2, axisZ:F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 53
    .local v5, omegaMagnitude:F
    float-to-double v8, v5

    const-wide v10, 0x3e45798ee2308c3aL

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 54
    div-float/2addr v0, v5

    .line 55
    div-float/2addr v1, v5

    .line 56
    div-float/2addr v2, v5

    .line 58
    :cond_0
    mul-float v8, v5, v4

    const/high16 v9, 0x4000

    div-float v7, v8, v9

    .line 59
    .local v7, thetaOverTwo:F
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 60
    .local v6, sinThetaOverTwo:F
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    .line 62
    .local v3, cosThetaOverTwo:F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    aput v9, p0, v8

    .line 63
    const/4 v8, 0x1

    mul-float v9, v6, v1

    aput v9, p0, v8

    .line 64
    const/4 v8, 0x2

    mul-float v9, v6, v2

    aput v9, p0, v8

    .line 65
    const/4 v8, 0x3

    aput v3, p0, v8

    .line 66
    return-void
.end method

.method public static rotateMatrix([F[FI)V
    .locals 1
    .parameter "in_mat"
    .parameter "out_mat"
    .parameter "rotate"

    .prologue
    .line 69
    sget-object v0, Lcom/morpho/utils/SensorUtil;->mat1:[F

    invoke-static {p1, v0, p1}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 70
    sget-object v0, Lcom/morpho/utils/SensorUtil;->mat2:[F

    invoke-static {p1, p1, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 71
    sparse-switch p2, :sswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 73
    :sswitch_0
    sget-object v0, Lcom/morpho/utils/SensorUtil;->cmat_000:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lcom/morpho/utils/SensorUtil;->cmat_090:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 79
    :sswitch_2
    sget-object v0, Lcom/morpho/utils/SensorUtil;->cmat_180:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 82
    :sswitch_3
    sget-object v0, Lcom/morpho/utils/SensorUtil;->cmat_270:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
