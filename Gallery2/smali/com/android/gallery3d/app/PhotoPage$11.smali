.class Lcom/android/gallery3d/app/PhotoPage$11;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
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
    .line 1026
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x82

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1040
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1041
    return-void
.end method

.method public setSeekBar(II)V
    .locals 1
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/MavSeekBar;->setMax(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/MavSeekBar;->setProgress(I)V

    .line 1035
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/MavSeekBar;->setEnabled(Z)V

    .line 1030
    return-void
.end method
