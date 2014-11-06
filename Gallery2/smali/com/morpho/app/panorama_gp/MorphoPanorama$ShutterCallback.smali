.class final Lcom/morpho/app/panorama_gp/MorphoPanorama$ShutterCallback;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShutterCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$ShutterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "HwCamera"

    const-string v1, "Morpho panorama take picture."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method
