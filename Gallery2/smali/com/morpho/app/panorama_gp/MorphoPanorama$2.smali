.class Lcom/morpho/app/panorama_gp/MorphoPanorama$2;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotatePreviewLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

.field final synthetic val$frp:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iput-object p2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->val$frp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->val$frp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 814
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->showDirectionArrow()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$300(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 815
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaHint()V

    .line 816
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$2;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hidePanoramaUI()V

    .line 820
    :cond_0
    return-void
.end method
