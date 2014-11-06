.class Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$1;
.super Ljava/lang/Object;
.source "PhotoShareAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;

    move-result-object v0

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->access$100()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-interface {v0, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;->OnItemClicked(I)V

    .line 40
    :cond_0
    return-void
.end method
