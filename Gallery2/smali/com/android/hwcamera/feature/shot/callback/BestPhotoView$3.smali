.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;
.super Ljava/lang/Object;
.source "BestPhotoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->initLayout(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mListener:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mListener:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;->onThumbnailClicked(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V

    .line 71
    :cond_0
    return-void
.end method
