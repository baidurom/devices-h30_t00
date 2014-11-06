.class Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$2;
.super Ljava/lang/Object;
.source "ActionDeleteAndConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;
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
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$2;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$2;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    #getter for: Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->access$200(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm$2;->this$0:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    #getter for: Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->access$200(Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 81
    :cond_0
    return-void
.end method
