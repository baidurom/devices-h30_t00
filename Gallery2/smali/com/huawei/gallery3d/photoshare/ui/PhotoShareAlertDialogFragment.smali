.class public Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhotoShareAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;
    }
.end annotation


# static fields
.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private isNeedNegativeButton:Z

.field private mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->isNeedNegativeButton:Z

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 31
    new-instance v1, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    invoke-direct {v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;-><init>()V

    .line 32
    .local v1, dialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$1;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v3, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->isNeedNegativeButton:Z

    if-eqz v3, :cond_0

    .line 55
    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public setNeedNegativeButton(Z)V
    .locals 0
    .parameter "isNeed"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->isNeedNegativeButton:Z

    .line 22
    return-void
.end method

.method public setOnDialogButtonClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;

    .line 28
    return-void
.end method
