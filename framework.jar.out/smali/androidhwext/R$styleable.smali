.class public final Landroidhwext/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidhwext/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AlertDialog:[I = null

.field public static final AlertDialog_popupAnimation:I = 0x0

.field public static final AlertDialog_popupAnimationnotitle:I = 0x1

.field public static final CubicBezierInterpolator:[I = null

.field public static final CubicBezierInterpolator_c1x:I = 0x0

.field public static final CubicBezierInterpolator_c1y:I = 0x1

.field public static final CubicBezierInterpolator_c2x:I = 0x2

.field public static final CubicBezierInterpolator_c2y:I = 0x3

.field public static final Theme:[I = null

.field public static final Theme_indeterminateDrawable:I = 0x1

.field public static final Theme_progressDrawable:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 3762
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidhwext/R$styleable;->AlertDialog:[I

    .line 3810
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidhwext/R$styleable;->CubicBezierInterpolator:[I

    .line 3881
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidhwext/R$styleable;->Theme:[I

    return-void

    .line 3762
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x3t
        0x1t 0x0t 0x1t 0x3t
    .end array-data

    .line 3810
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x1t 0x3t
        0x5t 0x0t 0x1t 0x3t
        0x6t 0x0t 0x1t 0x3t
        0x7t 0x0t 0x1t 0x3t
    .end array-data

    .line 3881
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x1t 0x3t
        0x3t 0x0t 0x1t 0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3748
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
