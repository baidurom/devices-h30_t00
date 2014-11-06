.class final Lcom/android/gallery3d/ui/ShareExecutor$1;
.super Ljava/lang/Object;
.source "ShareExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ShareExecutor;->createListViewDialog(Landroid/content/Context;Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/ShareExecutor$1;->val$listener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareExecutor$1;->val$listener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;->onUserConfirm(Z)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
