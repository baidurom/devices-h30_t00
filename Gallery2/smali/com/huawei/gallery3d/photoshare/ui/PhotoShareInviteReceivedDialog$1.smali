.class Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$1;
.super Ljava/lang/Object;
.source "PhotoShareInviteReceivedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->finish()V

    .line 72
    return-void
.end method
