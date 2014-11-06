.class Lcom/morpho/app/panorama_gp/MorphoPanorama$1;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;->calculatePanoramaPreviewSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

.field final synthetic val$frp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$1;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iput-object p2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$1;->val$frp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$1;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$1;->val$frp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    return-void
.end method
