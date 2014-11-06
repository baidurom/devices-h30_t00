.class public Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;
.super Ljava/lang/Object;
.source "BestPhotoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadingLargePictureRunable"
.end annotation


# instance fields
.field private index:I

.field private isShowLoading:Z

.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 344
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->index:I

    return v0
.end method


# virtual methods
.method public getPictureWidth()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->getLargeThumbnailDecodeWidth()I
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1700(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)I

    move-result v0

    return v0
.end method

.method public loadingLargePicture()V
    .locals 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->isShowLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessage(I)Z

    .line 349
    :cond_0
    return-void
.end method

.method public setIsShowLoading(Z)V
    .locals 0
    .parameter "isShowLoading"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->isShowLoading:Z

    .line 353
    return-void
.end method

.method public setPictureIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 371
    iput p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->index:I

    .line 372
    return-void
.end method

.method public showLargePicture(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable$1;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->post(Ljava/lang/Runnable;)Z

    .line 367
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->isShowLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessage(I)Z

    .line 368
    :cond_0
    return-void
.end method
