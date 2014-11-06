.class Lcom/morpho/app/panorama_gp/MorphoPanorama$3;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;->showStartAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$3;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$3;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$3;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->hideAllDirectionArrows()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$600(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$3;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->clearAnimation()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$700(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 1166
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1158
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1154
    return-void
.end method
