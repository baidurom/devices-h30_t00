.class public Lcom/android/gallery3d/ui/FaceScanBar;
.super Ljava/lang/Object;
.source "FaceScanBar.java"


# static fields
.field private static final MSG_HIDE:I = 0x1

.field private static final MSG_INIT:I = 0x3

.field private static final MSG_SHOW:I = 0x2

.field private static final MSG_UPDATE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FaceScanBar"


# instance fields
.field private mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mHandler:Landroid/os/Handler;

.field private mPictureToScan:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mRightText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 8
    .parameter "galleryActivity"

    .prologue
    const/4 v7, -0x1

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v4, Lcom/android/gallery3d/ui/FaceScanBar$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/ui/FaceScanBar$1;-><init>(Lcom/android/gallery3d/ui/FaceScanBar;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 54
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d039c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, leftString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    .line 56
    iget-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    const v5, 0x7f100089

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 57
    iget-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    iget-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    const v5, 0x7f10008a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, leftTextView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    const v5, 0x7f10008b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mRightText:Landroid/widget/TextView;

    .line 62
    const v4, 0x7f1000fb

    invoke-virtual {p1, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 63
    .local v3, viewGroup:Landroid/view/ViewGroup;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 64
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/FaceScanBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mRightText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public deconstruct()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    .local v0, viewGroup:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public finishProgress()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FaceScanBar;->hide()V

    .line 82
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void
.end method

.method public initProgress(I)V
    .locals 2
    .parameter "total"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    return-void
.end method

.method public updateProgess(I)V
    .locals 5
    .parameter "leftNum"

    .prologue
    .line 74
    iget v1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 75
    .local v0, progress:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I

    sub-int/2addr v4, p1

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void

    .line 74
    .end local v0           #progress:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
