.class public Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
.super Ljava/lang/Object;
.source "BestPhotoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;,
        Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    }
.end annotation


# static fields
.field private static final IDEL:I = 0x0

.field private static final LOADING_STATE:I = 0x2

.field private static final MSG_BACK_TO_CAMERA:I = 0x8

.field private static final MSG_CANCEL_LADING_LARGEPICTURE:I = 0x4

.field private static final MSG_HIDE_SELECT_PIC_LAYOUT:I = 0x6

.field private static final MSG_HIDE_TIPS:I = 0xa

.field private static final MSG_LOADING_PICTURE:I = 0x2

.field private static final MSG_SCAN_BEGIN:I = 0x0

.field private static final MSG_SCAN_END:I = 0x1

.field private static final MSG_SELECT_PIC_LAYOUT_DELAY:J = 0xbb8L

.field private static final MSG_SHOW_BEST_PHOTO_TIMEOUT:I = 0x5

.field private static final MSG_SHOW_BEST_PHOTO_TIMEOUT_DELAY:J = 0x1f4L

.field private static final MSG_SHOW_LADING_LARGEPICTURE:I = 0x3

.field private static final MSG_SHOW_SELECT_PIC_LAYOUT:I = 0x7

.field private static final MSG_SHOW_TIPS:I = 0x9

.field private static final NOT_SAVE_PICTURE:I = 0x1

.field private static final PREPARE_STATE:I = 0x1

.field private static final SAVE_ALL_PICTURE:I = 0x2

.field private static final SAVE_SELECTED_PICTURE:I = 0x0

.field private static final SCANER_PICTURE_DELAY:J = 0x12cL

.field private static final SELECTING_STATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BestPhotoService"

.field private static instance:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBestPhotoIndex:I

.field private mBestPhotoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBestPhotoLayout:Landroid/view/View;

.field private mBurstPictureBg:Landroid/view/View;

.field private mBurstPictureCancel:Landroid/view/View;

.field private mBurstPictureSave:Landroid/view/View;

.field private mBurstPictureSelectedNumView:Landroid/widget/TextView;

.field private mCancel:Z

.field private mCurrentIndex:I

.field private mFileFilter:Ljava/io/FileFilter;

.field private mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

.field private mPhotoModule:Lcom/android/hwcamera/PhotoModule;

.field private mPictureScanerRunnable:Ljava/lang/Runnable;

.field private mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

.field private mPreferViewFlingListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mScrollViewContent:Landroid/view/ViewGroup;

.field private mState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$1;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mFileFilter:Ljava/io/FileFilter;

    .line 118
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureScanerRunnable:Ljava/lang/Runnable;

    .line 405
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$4;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPreferViewFlingListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/PhotoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSelectedNumView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->setPictureSelectedTitle(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPictureByIndex(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->getLargeThumbnailDecodeWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Ljava/io/FileFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mFileFilter:Ljava/io/FileFilter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/ui/BestPhotoImageShowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showSelectPictureLayout()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showNextPicture()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPreviousPicture()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showOrHideSelectPictureLayoutIfNeeded()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->saveBestPhoto()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->backToCamera(I)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Ljava/io/File;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->makeBestPhotoItem(Ljava/io/File;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->cancelBestPhoto()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showLoadingPictureDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureScanerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->loadingPicture(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    return p1
.end method

.method private backToCamera(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->cancelLoadingPictureDialog()V

    .line 503
    if-nez p1, :cond_2

    .line 504
    invoke-direct {p0, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->savePictures(Z)V

    .line 508
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z

    .line 509
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->removeMessages(I)V

    .line 511
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->removeMessages(I)V

    .line 513
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->deleteAllTempPictures()V

    .line 514
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    invoke-virtual {v1, v6}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 515
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->restartPreview()V

    .line 516
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->lockOrientation()V

    .line 517
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 519
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->releasePictureItems()V

    .line 520
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->updateThumbnailUncached()V

    .line 522
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f100018

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, tips:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 525
    invoke-direct {p0, v6}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->setPhotoModule(Lcom/android/hwcamera/PhotoModule;)V

    .line 526
    iput v3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I

    .line 527
    return-void

    .line 505
    .end local v0           #tips:Landroid/view/View;
    :cond_2
    if-ne p1, v4, :cond_1

    .line 506
    invoke-direct {p0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->savePictures(Z)V

    goto :goto_0
.end method

.method private cancelBestPhoto()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->backToCamera(I)V

    .line 498
    return-void
.end method

.method private deleteAllTempPictures()V
    .locals 6

    .prologue
    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".burst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, burstPicturePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/hwcamera/Util;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 549
    .local v2, ret:Z
    if-nez v2, :cond_0

    const-string v3, "BestPhotoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file error ! file path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    return-void
.end method

.method private getLargeThumbnailDecodeWidth()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getShortWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getSelectedPictureNum()I
    .locals 4

    .prologue
    .line 561
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 566
    :cond_0
    return v2

    .line 562
    :cond_1
    const/4 v2, 0x0

    .line 563
    .local v2, sum:I
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    .line 564
    .local v1, item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hideSelectPictureLayoutIfImmediately(Z)V
    .locals 0
    .parameter "isImmediately"

    .prologue
    .line 277
    return-void
.end method

.method private initAlertDailog()V
    .locals 8

    .prologue
    .line 611
    new-instance v5, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$8;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$8;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 617
    .local v5, positiveRunable:Ljava/lang/Runnable;
    new-instance v6, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$9;

    invoke-direct {v6, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$9;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 623
    .local v6, naRunable:Ljava/lang/Runnable;
    new-instance v7, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$10;

    invoke-direct {v7, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$10;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 629
    .local v7, cacelRunable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0186

    const v2, 0x7f0d0187

    const v3, 0x7f0d0182

    const v4, 0x7f0d0181

    invoke-static/range {v0 .. v7}, Lcom/android/hwcamera/Util;->initDailog(Landroid/content/Context;IIIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 631
    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
    .locals 2

    .prologue
    .line 382
    const-class v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    .line 383
    :cond_0
    sget-object v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static instance(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
    .locals 1
    .parameter "mPhotoModule"

    .prologue
    .line 387
    invoke-static {}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance()Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    move-result-object v0

    .line 388
    .local v0, bestPhotoService:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
    if-eqz p0, :cond_0

    .line 389
    invoke-direct {v0, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->setPhotoModule(Lcom/android/hwcamera/PhotoModule;)V

    .line 391
    :cond_0
    return-object v0
.end method

.method private loadingPicture(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V
    .locals 5
    .parameter "bestPhotoItem"

    .prologue
    const/4 v4, 0x0

    .line 309
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 312
    .local v0, bestPhotoView:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;
    invoke-virtual {p1, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->setBestPhotoView(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V

    .line 313
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 315
    .local v1, currentIndex:I
    if-nez v1, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPictureByIndex(IZ)V

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->scrollToCurrentIndex(I)V

    .line 318
    new-instance v2, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$3;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;I)V

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->setOnBestPhotoViewTouchListener(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;)V

    .line 336
    return-void
.end method

.method private makeBestPhotoItem(Ljava/io/File;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    .locals 8
    .parameter "picture"
    .parameter "isLargeThumbnailDecoded"

    .prologue
    const/4 v6, 0x0

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, exifInterface:Landroid/media/ExifInterface;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #exifInterface:Landroid/media/ExifInterface;
    .local v1, exifInterface:Landroid/media/ExifInterface;
    move-object v0, v1

    .line 180
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    .restart local v0       #exifInterface:Landroid/media/ExifInterface;
    :goto_0
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_1
    return-object v6

    .line 181
    :cond_1
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3

    .line 182
    .local v3, jpegData:[B
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyCollection([B)Z

    move-result v7

    if-nez v7, :cond_0

    .line 183
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/hwcamera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 185
    .local v4, largeThumbnail:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->getLargeThumbnailDecodeWidth()I

    move-result v6

    invoke-static {p1, v6}, Lcom/android/hwcamera/Util;->makeBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 188
    :cond_2
    invoke-static {v5, v4, v2, p2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->newInstance(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    move-result-object v6

    goto :goto_1

    .line 178
    .end local v3           #jpegData:[B
    .end local v4           #largeThumbnail:Landroid/graphics/Bitmap;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private prepareBestPhoto()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    const-string v0, "BestPhotoService"

    const-string v1, "prepareBestPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I

    .line 427
    iput-boolean v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z

    .line 428
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 431
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$5;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f100019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollViewContent:Landroid/view/ViewGroup;

    .line 443
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f100015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    .line 444
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSelectedNumView:Landroid/widget/TextView;

    .line 445
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f10001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureCancel:Landroid/view/View;

    .line 447
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f100016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureBg:Landroid/view/View;

    .line 449
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoLayout:Landroid/view/View;

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSave:Landroid/view/View;

    .line 450
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureShow:Lcom/android/hwcamera/ui/BestPhotoImageShowView;

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPreferViewFlingListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->setOnBestPhotoViewFlingListener(Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;)V

    .line 451
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureCancel:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$6;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSave:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$7;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSelectedNumView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->setPictureSelectedTitle(Landroid/widget/TextView;)V

    .line 464
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/PhotoModule;->setSwipingEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 466
    const-string v0, "BestPhotoService"

    const-string v1, "prepareBestPhoto end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method private releasePictureItems()V
    .locals 3

    .prologue
    .line 553
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    .line 555
    .local v1, item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->release()V

    goto :goto_1

    .line 557
    .end local v1           #item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private saveBestPhoto()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->backToCamera(I)V

    .line 494
    return-void
.end method

.method private savePictures(Z)V
    .locals 6
    .parameter "isSaveAll"

    .prologue
    .line 533
    iget-object v4, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-static {v4}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    :goto_0
    return-void

    .line 534
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v3, selectedFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    iget-object v4, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    .line 537
    .local v1, item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isSelected()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    .line 538
    :cond_2
    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->moveFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 539
    .local v2, selectedFile:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    .end local v1           #item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    .end local v2           #selectedFile:Ljava/io/File;
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v4, v3}, Lcom/android/hwcamera/PhotoModule;->insertPicturesToGallery(Ljava/util/List;)V

    goto :goto_0
.end method

.method private setPhotoModule(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "mPhotoModule"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 396
    return-void
.end method

.method private setPictureSelectedTitle(Landroid/widget/TextView;)V
    .locals 3
    .parameter "burstPictureSelectedNumView"

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->getSelectedPictureNum()I

    move-result v0

    .line 583
    .local v0, num:I
    if-nez v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->getSelectedPictureNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showLoadingPictureDialog()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 287
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 290
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    goto :goto_0
.end method

.method private showNextPicture()V
    .locals 2

    .prologue
    .line 470
    iget v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCurrentIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 471
    .local v0, index:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPictureByIndex(IZ)V

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->scrollToCurrentIndex(I)V

    .line 473
    return-void
.end method

.method private showOrHideSelectPictureLayoutIfNeeded()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showSelectPictureLayout()V

    goto :goto_0
.end method

.method private showPictureByIndex(IZ)V
    .locals 3
    .parameter "index"
    .parameter "isLoading"

    .prologue
    .line 482
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/android/hwcamera/Util;->checkArrayInbounds(ILjava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 484
    .local v1, loadingLargePictureRunable:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;
    invoke-virtual {v1, p2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->setIsShowLoading(Z)V

    .line 485
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    .line 486
    .local v0, bestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->getBestPhotoView()Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->invertPressedExcept(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V

    .line 487
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->setPictureIndex(I)V

    .line 488
    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->showLargePicture(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;)V

    .line 489
    iput p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCurrentIndex:I

    goto :goto_0
.end method

.method private showPreviousPicture()V
    .locals 2

    .prologue
    .line 476
    iget v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCurrentIndex:I

    add-int/lit8 v0, v1, -0x1

    .line 477
    .local v0, index:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPictureByIndex(IZ)V

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->scrollToCurrentIndex(I)V

    .line 479
    return-void
.end method

.method private showSelectPictureLayout()V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessage(I)Z

    .line 270
    return-void
.end method


# virtual methods
.method public cancelLoadingPictureDialog()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 282
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    .line 400
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    .line 401
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->unlockOrientation()V

    .line 402
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->prepareBestPhoto()V

    .line 403
    return-void
.end method

.method protected invertPressedExcept(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V
    .locals 4
    .parameter "bestPhotoView"

    .prologue
    .line 570
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v2, 0x0

    .line 572
    .local v2, sum:I
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    .line 573
    .local v1, item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    invoke-virtual {p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->getBestPhotoItem()Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 574
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->setBestPhotoViewPressed(Z)V

    goto :goto_0

    .line 576
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->setBestPhotoViewPressed(Z)V

    goto :goto_0
.end method

.method public isProcessIng()Z
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBestPhotoReport(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x5

    .line 634
    const-string v0, "BestPhotoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBestPhotoReport :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    .line 637
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->removeMessages(I)V

    .line 639
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showBestPhoto()V

    .line 642
    :cond_0
    return-void
.end method

.method public scrollToCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 339
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x4c

    invoke-static {v1}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 340
    :cond_0
    return-void
.end method

.method public showBestPhoto()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 294
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessage(I)Z

    .line 299
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    .line 300
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showPictureByIndex(IZ)V

    .line 301
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    iget v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->getBestPhotoView()Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->setIsSelectedState(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoItems:Ljava/util/List;

    iget v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->setSelected(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureSelectedNumView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->setPictureSelectedTitle(Landroid/widget/TextView;)V

    .line 304
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->scrollToCurrentIndex(I)V

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V

    goto :goto_0
.end method

.method public waitProcessDone(Z)V
    .locals 1
    .parameter "isPressBackMenu"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->isProcessIng()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 603
    :cond_0
    if-eqz p1, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->initAlertDailog()V

    goto :goto_0

    .line 607
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->backToCamera(I)V

    goto :goto_0
.end method
