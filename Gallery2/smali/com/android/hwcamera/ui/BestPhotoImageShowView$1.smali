.class Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BestPhotoImageShowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/BestPhotoImageShowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    #getter for: Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    invoke-static {v0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    #getter for: Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    invoke-static {v0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;->showNext(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V

    .line 46
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    #getter for: Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    invoke-static {v0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    #getter for: Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    invoke-static {v0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;->shorPrevious(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V

    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    #getter for: Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    invoke-static {v0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    #getter for: Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    invoke-static {v0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;->this$0:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;->onSingleTapUp(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
