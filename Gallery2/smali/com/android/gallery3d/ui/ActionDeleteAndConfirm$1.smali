.class Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;
.super Ljava/lang/Object;
.source "ActionDeleteAndConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mIsShowing:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->access$002(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;Z)Z

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    #getter for: Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDissimssListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->access$100(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$1;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    #getter for: Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mDissimssListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->access$100(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 40
    :cond_0
    return-void
.end method
