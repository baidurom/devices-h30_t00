.class public Lcom/android/gallery3d/app/DmsSetPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "DmsSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/DmsSetPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_SELECTED_CLUSTER_TYPE:Ljava/lang/String; = "selected-cluster"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final MSG_REFRESH_CLICKED:I = 0x2

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsSetPage"


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

.field private mConfig:Lcom/android/gallery3d/app/Config$DmsSetPage;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/DmsSetPage$MyDetailsSource;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSubtitle:Ljava/lang/String;

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mX:F

.field private mY:F

.field private mZ:F

.field private refreshItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 99
    iput v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mLoadingBits:I

    .line 100
    iput-boolean v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mInitialSynced:Z

    .line 109
    new-instance v0, Lcom/android/gallery3d/app/DmsSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/DmsSetPage$1;-><init>(Lcom/android/gallery3d/app/DmsSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 440
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/DmsSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/DmsSetPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/DmsSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmsSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/DmsSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/DmsSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/DmsSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/DmsSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/Config$DmsSetPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mConfig:Lcom/android/gallery3d/app/Config$DmsSetPage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/DmsSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mX:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/DmsSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mY:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/DmsSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/DmsSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->pickAlbum(I)V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 232
    iget v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mLoadingBits:I

    .line 233
    return-void
.end method

.method private getSlotCenter(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 153
    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 154
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    .line 155
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v3

    .line 156
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 157
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 158
    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mShowDetails:Z

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 386
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 276
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 279
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 281
    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v2, Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/DmsSetPage;Lcom/android/gallery3d/app/DmsSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 283
    return-void
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    .line 286
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/app/Config$DmsSetPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$DmsSetPage;

    move-result-object v6

    .line 290
    .local v6, config:Lcom/android/gallery3d/app/Config$DmsSetPage;
    new-instance v0, Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, v6, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 291
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mConfig:Lcom/android/gallery3d/app/Config$DmsSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v5, p0, Lcom/android/gallery3d/app/DmsSetPage;->mConfig:Lcom/android/gallery3d/app/Config$DmsSetPage;

    iget v5, v5, Lcom/android/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/DmsSetPage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/DmsSetPage$3;-><init>(Lcom/android/gallery3d/app/DmsSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 317
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 319
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 189
    return-void
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 170
    iget-boolean v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z

    if-nez v4, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 173
    .local v3, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, mediaPath:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmsSetPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 178
    .local v1, data:Landroid/os/Bundle;
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 179
    .local v0, center:[I
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/DmsSetPage;->getSlotCenter(I[I)V

    .line 180
    const-string v4, "set-center"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 181
    const-string v4, "media-path"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadingBit"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mLoadingBits:I

    .line 237
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mShowDetails:Z

    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsSource:Lcom/android/gallery3d/app/DmsSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/DmsSetPage$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/DmsSetPage$4;-><init>(Lcom/android/gallery3d/app/DmsSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 400
    return-void
.end method


# virtual methods
.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0a001f

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmsSetPage;->initializeViews()V

    .line 206
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mTitle:Ljava/lang/String;

    .line 209
    const-string v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSubtitle:Ljava/lang/String;

    .line 210
    new-instance v1, Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 211
    new-instance v1, Lcom/android/gallery3d/app/DmsSetPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/DmsSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/DmsSetPage;Lcom/android/gallery3d/app/DmsSetPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mDetailsSource:Lcom/android/gallery3d/app/DmsSetPage$MyDetailsSource;

    .line 212
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mVibrator:Landroid/os/Vibrator;

    .line 213
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 214
    const-string v1, "selected-cluster"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSelectedAction:I

    .line 217
    new-instance v1, Lcom/android/gallery3d/app/DmsSetPage$2;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/DmsSetPage$2;-><init>(Lcom/android/gallery3d/app/DmsSetPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 324
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 326
    .local v1, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f120005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 327
    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 329
    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionBarMenu(Landroid/view/Menu;)V

    .line 334
    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->onRestartActionMode()V

    .line 337
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 138
    iput p1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mX:F

    .line 139
    iput p2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mY:F

    .line 140
    iput p3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mZ:F

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 143
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 343
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 366
    :goto_0
    return v1

    .line 345
    :sswitch_0
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    .line 346
    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    .line 349
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    iget-boolean v2, p0, Lcom/android/gallery3d/app/DmsSetPage;->mShowDetails:Z

    if-eqz v2, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmsSetPage;->hideDetails()V

    goto :goto_0

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmsSetPage;->showDetails()V

    goto :goto_0

    .line 356
    :cond_1
    const v3, 0x7f0d02ae

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 362
    :sswitch_2
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onRefreshButtonClicked()V

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10022b -> :sswitch_2
        0x7f10027a -> :sswitch_1
        0x7f10027c -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 0
    .parameter "slotIndex"

    .prologue
    .line 200
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 246
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 253
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/DmsSetPage;->clearLoadingBit(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 260
    iput-boolean v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmsSetPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 264
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/DmsSetPage;->setLoadingBit(I)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 269
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/DmsSetPage;->setLoadingBit(I)V

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 273
    :cond_0
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 404
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 405
    const-string v0, "AirSharing_DmsSetPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/DmsSetPage$5;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/DmsSetPage$5;-><init>(Lcom/android/gallery3d/app/DmsSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method
