.class Lcom/android/gallery3d/filtershow/PanelController$2;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/PanelController;->showCropPopupMenu(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;

.field final synthetic val$anchor:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->val$anchor:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/PanelController;->access$700(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$2;->val$anchor:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setAspectButton(Landroid/widget/Button;I)V

    .line 692
    const/4 v0, 0x1

    return v0
.end method
