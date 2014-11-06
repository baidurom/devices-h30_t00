.class public Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;
.super Ljava/lang/Object;
.source "ActionDeleteAndConfirm.java"


# instance fields
.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDissimssListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mIsShowing:Z

.field private mItemCount:I

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "itemCount"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$2;-><init>(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mContext:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mItemCount:I

    .line 25
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDissimssListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 66
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    return v0
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDissimssListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 74
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const v4, 0x7f0d0269

    .line 28
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    if-eqz v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    .line 30
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f11

    iget v3, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mItemCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, confirmMsg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d026c

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    .line 34
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;-><init>(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 43
    .end local v0           #confirmMsg:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->setTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 4
    .parameter "itemCount"

    .prologue
    .line 50
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z

    .line 53
    iget v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mItemCount:I

    if-eq v1, p1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f11

    iget v3, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mItemCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, confirmMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    .end local v0           #confirmMsg:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
