.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->showLargePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

.field final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;->this$1:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    iput-object p2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;->this$1:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    iget-object v0, v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCurrentIndex:I
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1800(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;->this$1:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->index:I
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->access$1900(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;->this$1:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    iget-object v0, v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
