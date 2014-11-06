.class Lcom/android/gallery3d/app/DmrController$2;
.super Ljava/lang/Object;
.source "DmrController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$2;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$2;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$800(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$2;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$900(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$2;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mRewindButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1000(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$2;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mForwardButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1100(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 221
    return-void
.end method
