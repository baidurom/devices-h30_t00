.class Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasteUserCancelDialogClickLisntener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1400(Lcom/android/gallery3d/ui/MenuExecutor;Z)V

    .line 1023
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->notifyAllWaitingLock()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1800(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 1026
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 1000
    packed-switch p2, :pswitch_data_0

    .line 1016
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->notifyAllWaitingLock()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1800(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 1017
    return-void

    .line 1002
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1400(Lcom/android/gallery3d/ui/MenuExecutor;Z)V

    .line 1003
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1702(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    goto :goto_0

    .line 1007
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1400(Lcom/android/gallery3d/ui/MenuExecutor;Z)V

    .line 1009
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
