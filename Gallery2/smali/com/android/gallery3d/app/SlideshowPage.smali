.class public Lcom/android/gallery3d/app/SlideshowPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;,
        Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;,
        Lcom/android/gallery3d/app/SlideshowPage$Slide;,
        Lcom/android/gallery3d/app/SlideshowPage$Model;
    }
.end annotation


# static fields
.field public static final KEY_DREAM:Ljava/lang/String; = "dream"

.field public static final KEY_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_PHOTO_INDEX:Ljava/lang/String; = "photo-index"

.field public static final KEY_RANDOM_ORDER:Ljava/lang/String; = "random-order"

.field public static final KEY_REPEAT:Ljava/lang/String; = "repeat"

.field public static final KEY_SET_PATH:Ljava/lang/String; = "media-set-path"

.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final SLIDESHOW_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "SlideshowPage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 94
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SlideshowPage$1;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SlideshowPage;)Lcom/android/gallery3d/ui/SlideshowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/app/SlideshowPage$Slide;)Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SlideshowPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 6
    .parameter "mediaSet"
    .parameter "index"

    .prologue
    .line 250
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 253
    .local v4, subset:Lcom/android/gallery3d/data/MediaSet;
    if-nez v4, :cond_0

    .line 250
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 256
    .local v0, count:I
    if-ge p1, v0, :cond_1

    .line 257
    invoke-static {v4, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 262
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :goto_2
    return-object v5

    .line 259
    .restart local v0       #count:I
    .restart local v4       #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    sub-int/2addr p1, v0

    goto :goto_1

    .line 261
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_2
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 220
    const-string v7, "random-order"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 223
    .local v5, random:Z
    const-string v7, "media-set-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, mediaPath:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 227
    .local v3, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v5, :cond_0

    .line 228
    const-string v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 229
    .local v6, repeat:Z
    new-instance v7, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;

    invoke-direct {v9, v3, v6}, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 231
    iget-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v8, "photo-index"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 241
    :goto_0
    return-void

    .line 233
    .end local v6           #repeat:Z
    :cond_0
    const-string v7, "photo-index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, index:I
    const-string v7, "media-item-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, itemPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 236
    .local v4, path:Lcom/android/gallery3d/data/Path;
    :cond_1
    const-string v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 237
    .restart local v6       #repeat:Z
    new-instance v7, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;

    invoke-direct {v9, v3, v6}, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v0, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 239
    iget-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v8, "photo-index"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SlideshowPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 247
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SlideshowPage$3;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/SlideshowPage$Model;->nextSlide(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    .line 156
    return-void
.end method

.method private showPendingBitmap()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 163
    .local v0, slide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    if-nez v0, :cond_1

    .line 164
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isCasting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    iget-object v2, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, v5}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;Z)V

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    iget-object v2, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    .line 175
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v3, "media-item-path"

    iget-object v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo-index"

    iget v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->index:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0a002c

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mLaunchedFromPhotoPage:Z

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onBackPressed()V

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 118
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x13

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 120
    const-string v0, "dream"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mLaunchedFromPhotoPage:Z

    .line 130
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$2;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SlideshowPage$2;-><init>(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->initializeViews()V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    .line 146
    return-void

    .line 125
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->pause()V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlideshowView;->release()V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->resume()V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onUserLeaveHint()V

    .line 216
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onUserLeaveHint()V

    .line 217
    return-void
.end method
