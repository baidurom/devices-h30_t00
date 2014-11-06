.class public Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;
.super Ljava/lang/Object;
.source "BestPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;
    }
.end annotation


# instance fields
.field private mBestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

.field private mBurstLayout:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIsSelected:Z

.field private mListener:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;

.field private mPressedDrawableResId:I

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailSelect:Landroid/widget/ImageView;

.field private mUnPressedDrawableResId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "thumbnail"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f02008f

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mPressedDrawableResId:I

    .line 33
    const v0, 0x7f020026

    iput v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mUnPressedDrawableResId:I

    .line 37
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0, p2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->initLayout(Landroid/graphics/Bitmap;)V

    .line 39
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mIsSelected:Z

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->setIsSelectedState(Z)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mListener:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mIsSelected:Z

    return v0
.end method

.method private initLayout(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "thumbnail"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mView:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mView:Landroid/view/View;

    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mThumbnail:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mView:Landroid/view/View;

    const v2, 0x7f100020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBurstLayout:Landroid/view/ViewGroup;

    .line 47
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mView:Landroid/view/View;

    const v2, 0x7f100021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mThumbnailSelect:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mThumbnailSelect:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$1;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$1;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBurstLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$2;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$2;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBurstLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$3;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getBestPhotoItem()Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    return-object v0
.end method

.method public getBurstLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBurstLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isIsSelected()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mIsSelected:Z

    return v0
.end method

.method public setBestPhotoItem(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V
    .locals 0
    .parameter "bestPhotoItem"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    .line 118
    return-void
.end method

.method public setIsSelectedState(Z)V
    .locals 4
    .parameter "isSelected"

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mIsSelected:Z

    xor-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 84
    if-eqz p1, :cond_1

    move v0, v1

    .line 85
    .local v0, y:I
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mView:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 88
    .end local v0           #y:I
    :cond_0
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mIsSelected:Z

    .line 89
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mThumbnailSelect:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v2, 0x7f020208

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mThumbnailSelect:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    return-void

    .line 84
    :cond_1
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public setOnBestPhotoViewTouchListener(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mListener:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView$OnBestPhotoViewTouchListener;

    .line 99
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mBurstLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mPressedDrawableResId:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->mUnPressedDrawableResId:I

    goto :goto_0
.end method
