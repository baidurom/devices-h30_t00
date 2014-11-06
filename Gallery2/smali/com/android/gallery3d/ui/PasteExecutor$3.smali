.class Lcom/android/gallery3d/ui/PasteExecutor$3;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PasteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PasteExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$3;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor$3;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PasteExecutor;->access$402(Lcom/android/gallery3d/ui/PasteExecutor;Z)Z

    .line 100
    return-void
.end method
