.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->loadingPicture(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

.field final synthetic val$bestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

.field final synthetic val$currentIndex:I


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    iput-object p2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->val$bestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    iput p3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->val$currentIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V
    .locals 3
    .parameter "bestPhotoView"

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Z)V

    .line 333
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    iget v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->val$currentIndex:I

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPictureByIndex(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1600(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;IZ)V

    .line 334
    return-void
.end method

.method public onThumbnailSelected(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V
    .locals 2
    .parameter "bestPhotoView"

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Z)V

    .line 324
    invoke-virtual {p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->isIsSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->setIsSelectedState(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->val$bestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    invoke-virtual {p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->isIsSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->setSelected(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSelectedNumView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1400(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->setPictureSelectedTitle(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1500(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Landroid/widget/TextView;)V

    .line 327
    return-void
.end method
