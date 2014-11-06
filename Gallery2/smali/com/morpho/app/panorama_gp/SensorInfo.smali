.class public Lcom/morpho/app/panorama_gp/SensorInfo;
.super Ljava/lang/Object;
.source "SensorInfo.java"


# instance fields
.field public index:I

.field public timestamp:J

.field public values:[F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method constructor <init>(Landroid/hardware/SensorEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "id"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/morpho/app/panorama_gp/SensorInfo;->index:I

    .line 13
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/morpho/app/panorama_gp/SensorInfo;->timestamp:J

    .line 14
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/SensorInfo;->values:[F

    .line 15
    return-void
.end method
