.class Lcom/morpho/app/panorama_gp/MorphoPanorama$4;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotateProgressLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

.field final synthetic val$frp:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$progressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

.field final synthetic val$progressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;Lcom/android/hwcamera/ui/RotateLinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Lcom/android/hwcamera/ui/RotateLinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iput-object p2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$progressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    iput-object p3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$frp:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$progressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$progressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$frp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2362
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$progressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->requestLayout()V

    .line 2363
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$4;->val$progressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->requestLayout()V

    .line 2364
    return-void
.end method
