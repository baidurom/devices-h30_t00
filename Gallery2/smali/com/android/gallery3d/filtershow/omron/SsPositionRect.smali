.class public final Lcom/android/gallery3d/filtershow/omron/SsPositionRect;
.super Ljava/lang/Object;
.source "SsPositionRect.java"


# instance fields
.field private ptLowerLeft:Landroid/graphics/Point;

.field private ptLowerRight:Landroid/graphics/Point;

.field private ptUpperLeft:Landroid/graphics/Point;

.field private ptUpperRight:Landroid/graphics/Point;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptUpperLeft:Landroid/graphics/Point;

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptUpperRight:Landroid/graphics/Point;

    .line 16
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptLowerLeft:Landroid/graphics/Point;

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptLowerRight:Landroid/graphics/Point;

    .line 18
    return-void
.end method


# virtual methods
.method public getLowerLeft()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptLowerLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLowerRight()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptLowerRight:Landroid/graphics/Point;

    return-object v0
.end method

.method public getUpperLeft()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptUpperLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method public getUpperRight()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptUpperRight:Landroid/graphics/Point;

    return-object v0
.end method

.method public setLowerLeft(Landroid/graphics/Point;)V
    .locals 0
    .parameter "ptLowerLeft"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptLowerLeft:Landroid/graphics/Point;

    .line 48
    return-void
.end method

.method public setLowerRight(Landroid/graphics/Point;)V
    .locals 0
    .parameter "ptLowerRight"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptLowerRight:Landroid/graphics/Point;

    .line 58
    return-void
.end method

.method public setUpperLeft(Landroid/graphics/Point;)V
    .locals 0
    .parameter "ptUpperLeft"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptUpperLeft:Landroid/graphics/Point;

    .line 28
    return-void
.end method

.method public setUpperRight(Landroid/graphics/Point;)V
    .locals 0
    .parameter "ptUpperRight"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/omron/SsPositionRect;->ptUpperRight:Landroid/graphics/Point;

    .line 38
    return-void
.end method
