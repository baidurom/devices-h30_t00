.class public Lcom/android/gallery3d/app/AlbumSetEmptyBackground;
.super Landroid/widget/LinearLayout;
.source "AlbumSetEmptyBackground.java"


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private final mBackgroundView:Landroid/view/View;

.field private mCameraButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mPhotoShareSwitchButton:Landroid/widget/Button;

.field private mTips:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "selectedAction"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mContext:Landroid/content/Context;

    .line 29
    const/16 v1, 0x80

    if-ne p2, v1, :cond_0

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005d

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    .line 31
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f10018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mPhotoShareSwitchButton:Landroid/widget/Button;

    .line 32
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mPhotoShareSwitchButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$1;-><init>(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void

    .line 44
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f100004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mTips:Landroid/view/View;

    .line 46
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f100005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mCameraButton:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mCameraButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$2;-><init>(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 61
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v0

    .line 62
    .local v0, actionHeight:I
    div-int/lit8 v1, p5, 0xa

    .line 63
    .local v1, offset:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mBackgroundView:Landroid/view/View;

    add-int v3, p3, v1

    add-int/2addr v3, v0

    invoke-virtual {v2, p2, v3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 64
    return-void
.end method

.method public setActionBar(Lcom/android/gallery3d/app/GalleryActionBar;)V
    .locals 0
    .parameter "actionBar"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 68
    return-void
.end method

.method public switchSelectionMode(Z)V
    .locals 4
    .parameter "inSelectionMode"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mTips:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mTips:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mCameraButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 71
    goto :goto_0

    :cond_3
    move v1, v2

    .line 72
    goto :goto_1
.end method
