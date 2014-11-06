.class Lcom/android/gallery3d/app/MoviePlayer$7;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    xor-int v0, v1, p1

    .line 405
    .local v0, diff:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v1, p1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1302(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 408
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 417
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$400(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleExists:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$7;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
