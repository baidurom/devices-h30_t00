.class Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorInfoManager"
.end annotation


# instance fields
.field public a_ix:I

.field public g_ix:I

.field public img_ix:I
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "URF_UNREAD_PUBLIC_OR_PROTECTED_FIELD"
        }
    .end annotation
.end field

.field public o_ix:I

.field public r_ix:I

.field public stop_thres:I

.field public time:J
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "URF_UNREAD_PUBLIC_OR_PROTECTED_FIELD"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2870
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2871
    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->img_ix:I

    .line 2872
    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->g_ix:I

    .line 2873
    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->a_ix:I

    .line 2874
    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->o_ix:I

    .line 2875
    iput v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SensorInfoManager;->r_ix:I

    .line 2876
    return-void
.end method
