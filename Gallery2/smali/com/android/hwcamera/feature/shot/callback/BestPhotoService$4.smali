.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V
    .locals 1
    .parameter "BestPhotoView"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showOrHideSelectPictureLayoutIfNeeded()V
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2400(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 421
    return-void
.end method

.method public shorPrevious(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V
    .locals 1
    .parameter "BestPhotoView"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showSelectPictureLayout()V
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 415
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPreviousPicture()V
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 416
    return-void
.end method

.method public showNext(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V
    .locals 1
    .parameter "BestPhotoView"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showSelectPictureLayout()V
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 409
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showNextPicture()V
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 410
    return-void
.end method
