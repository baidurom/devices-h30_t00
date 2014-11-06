.class Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/gallery3d/anim/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mActionId:I

.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private final mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter
    .parameter "actionId"
    .parameter "listener"
    .parameter "photoView"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    .line 386
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 387
    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 388
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 6

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$702(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->startScaleAnimation(Z)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1002(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1102(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    .line 439
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 392
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$702(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$800(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 418
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1002(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1102(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    .line 421
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->startPhotoViewDeleteAnimation(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)V
    invoke-static {v0, v1, p0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$900(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$702(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->startScaleAnimation(Z)V

    goto :goto_0
.end method
