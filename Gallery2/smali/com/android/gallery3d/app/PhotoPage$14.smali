.class Lcom/android/gallery3d/app/PhotoPage$14;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 1
    .parameter "confirmed"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 1728
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1723
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$6000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setDeleteAnimationValue(Z)V

    .line 1718
    return-void
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 1731
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1711
    return-void
.end method
