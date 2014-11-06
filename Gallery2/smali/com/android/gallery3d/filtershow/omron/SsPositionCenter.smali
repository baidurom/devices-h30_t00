.class public final Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;
.super Ljava/lang/Object;
.source "SsPositionCenter.java"


# instance fields
.field private nAngle:I

.field private nSize:I

.field private ptCenter:Landroid/graphics/Point;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->ptCenter:Landroid/graphics/Point;

    .line 14
    iput v1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->nSize:I

    .line 15
    iput v1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->nAngle:I

    .line 16
    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->nAngle:I

    return v0
.end method

.method public getCenter()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->ptCenter:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->nSize:I

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "nAngle"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->nAngle:I

    .line 46
    return-void
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0
    .parameter "ptCenter"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->ptCenter:Landroid/graphics/Point;

    .line 26
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "nSize"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionCenter;->nSize:I

    .line 36
    return-void
.end method
