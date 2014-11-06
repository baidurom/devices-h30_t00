.class public Lcom/morpho/utils/SensorInfo;
.super Ljava/lang/Object;
.source "SensorInfo.java"


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

    .line 9
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/morpho/utils/SensorInfo;->mat1:[F

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/morpho/utils/SensorInfo;->mat2:[F

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/morpho/utils/SensorInfo;->cmat_000:[F

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/morpho/utils/SensorInfo;->cmat_090:[F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/morpho/utils/SensorInfo;->cmat_180:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/morpho/utils/SensorInfo;->cmat_270:[F

    return-void

    .line 9
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

    .line 14
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

    .line 20
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

    .line 25
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

    .line 30
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

    .line 35
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
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeltaRotationVector([F[FJ)V
    .locals 12
    .parameter "dst_vector"
    .parameter "values"
    .parameter "diff_time"

    .prologue
    .line 44
    long-to-float v8, p2

    const v9, 0x3089705f

    mul-float v4, v8, v9

    .line 45
    .local v4, dT:F
    const/4 v8, 0x0

    aget v0, p1, v8

    .line 46
    .local v0, axisX:F
    const/4 v8, 0x1

    aget v1, p1, v8

    .line 47
    .local v1, axisY:F
    const/4 v8, 0x2

    aget v2, p1, v8

    .line 49
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

    .line 51
    .local v5, omegaMagnitude:F
    float-to-double v8, v5

    const-wide v10, 0x3e45798ee2308c3aL

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 52
    div-float/2addr v0, v5

    .line 53
    div-float/2addr v1, v5

    .line 54
    div-float/2addr v2, v5

    .line 56
    :cond_0
    mul-float v8, v5, v4

    const/high16 v9, 0x4000

    div-float v7, v8, v9

    .line 57
    .local v7, thetaOverTwo:F
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 58
    .local v6, sinThetaOverTwo:F
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    .line 60
    .local v3, cosThetaOverTwo:F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    aput v9, p0, v8

    .line 61
    const/4 v8, 0x1

    mul-float v9, v6, v1

    aput v9, p0, v8

    .line 62
    const/4 v8, 0x2

    mul-float v9, v6, v2

    aput v9, p0, v8

    .line 63
    const/4 v8, 0x3

    aput v3, p0, v8

    .line 64
    return-void
.end method

.method public static rotateMatrix([F[FI)V
    .locals 1
    .parameter "in_mat"
    .parameter "out_mat"
    .parameter "rotate"

    .prologue
    .line 67
    sget-object v0, Lcom/morpho/utils/SensorInfo;->mat1:[F

    invoke-static {p1, v0, p1}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 68
    sget-object v0, Lcom/morpho/utils/SensorInfo;->mat2:[F

    invoke-static {p1, p1, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 71
    :pswitch_0
    sget-object v0, Lcom/morpho/utils/SensorInfo;->cmat_000:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v0, Lcom/morpho/utils/SensorInfo;->cmat_090:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Lcom/morpho/utils/SensorInfo;->cmat_180:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 80
    :pswitch_3
    sget-object v0, Lcom/morpho/utils/SensorInfo;->cmat_270:[F

    invoke-static {p1, p0, v0}, Lcom/morpho/utils/Matrix3x3;->multiply([F[F[F)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
