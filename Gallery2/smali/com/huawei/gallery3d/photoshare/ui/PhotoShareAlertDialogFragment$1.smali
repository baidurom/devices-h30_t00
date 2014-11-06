.class Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "PhotoShareAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;->onPositiveClick()V

    .line 52
    :cond_0
    return-void
.end method
