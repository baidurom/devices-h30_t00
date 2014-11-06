.class Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;
.super Ljava/lang/Object;
.source "PhotoShareInviteReceivedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 54
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mSharePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->access$100(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mDisplayName:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->access$200(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->confirmReceiverFolder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->finish()V

    .line 60
    return-void
.end method
