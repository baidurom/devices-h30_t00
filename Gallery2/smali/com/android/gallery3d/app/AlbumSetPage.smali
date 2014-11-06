.class public Lcom/android/gallery3d/app/AlbumSetPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;,
        Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

.field private static final KEY_LIMIT_EXCEED:Ljava/lang/String; = "limit-exceed"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PHOTOSHARE_PATH:Ljava/lang/String; = "photoshare-path"

.field public static final KEY_PRIVATE_MODE:Ljava/lang/String; = "private-mode"

.field public static final KEY_SELECTED_CLUSTER_TYPE:Ljava/lang/String; = "selected-cluster"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final MSG_SWITCH_CLUSTER:I = 0x2

.field private static final MSG_SWITCH_TO_GALLERY:I = 0xf

.field private static final MSG_SWITCH_TO_PHOTOSHARE:I = 0xe

.field private static final REQUEST_CAMERA:I = 0xa

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final REQUEST_MULTIPICK:I = 0xb

.field private static final REQUEST_PHOTOSHARE_LOGIN:I = 0xc

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAddPictureToPhotoShare:Z

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private final mAlbumSetNumberListener:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

.field private mCameraButton:Landroid/widget/Button;

.field private mCameraPicture:Ljava/io/File;

.field private mClickedItemId:I

.field private mClickedItemTitle:I

.field private mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

.field private mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

.field private mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

.field private mFaceScanFinish:Z

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHiddenReload:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsHiddenSetInit:Z

.field private mIsPrivateSetInit:Z

.field private mIsSwitchToGalleryFromPhotoShareClicked:Z

.field private mIsSwitchToPhotoShareFromGalleryClicked:Z

.field private mLimitExceedConifrm:Ljava/lang/String;

.field private mLimitExceedMessage:Ljava/lang/String;

.field private mLimitExceedTitle:Ljava/lang/String;

.field private mLoadingBits:I

.field private mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

.field private mLongTapSlotIndex:I

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

.field private mNeedEnterPrivateMode:Z

.field private mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

.field private mPhotoShareIntent:Landroid/content/Intent;

.field private mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

.field private mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

.field private mPhotoSharePathToAdd:Lcom/android/gallery3d/data/Path;

.field private mPrivacyModeChangeListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;

.field private mPrivateReload:Z

.field private mReloadType:I

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private final mScanFaceListener:Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;

.field private mSelectAllHeight:I

.field private mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetPrivateItem:Landroid/view/MenuItem;

.field private mShareFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShareManager:Lcom/android/gallery3d/app/ShareManager;

.field private mSharingAroundItem:Landroid/view/MenuItem;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mShowedEmptyToastForSelf:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mStatusBarHeight:I

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

.field private mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

.field private mTitle:Ljava/lang/String;

.field private mToolbarHeightLand:I

.field private mToolbarHeightPort:I

.field private mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 142
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 182
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 184
    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 185
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHiddenSetInit:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsPrivateSetInit:Z

    .line 213
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToPhotoShareFromGalleryClicked:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToGalleryFromPhotoShareClicked:Z

    .line 237
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivacyModeChangeListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;

    .line 257
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 335
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

    .line 344
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    .line 383
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1506
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mScanFaceListener:Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;

    .line 1542
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$13;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetNumberListener:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;

    .line 1759
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$15;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    .line 1807
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$16;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$16;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    .line 1830
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetPrivateItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ToolbarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SelectAllView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/LongTapManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSharingAroundItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetailWrapper()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedConifrm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedConifrm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/PhotoShareItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->switchStateToPhotoShareFromGallery()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->switchStateToGalleryFromPhotoShare()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/AlbumSetPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onOperatedDone()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarHeightPort:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHiddenReload:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initHiddenSet()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateReload:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initPrivateSet()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapSlotIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarHeightLand:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/FaceScanBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideCameraButton()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/MenuExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onPhotoShareItemClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetTabsBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    return-object v0
.end method

.method private cleanupCameraButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 711
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 714
    .local v0, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 716
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 717
    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    .line 718
    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method private clearLoadingBit(I)V
    .locals 4
    .parameter "loadingBit"

    .prologue
    const/4 v3, 0x1

    .line 742
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 743
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v1, :cond_2

    .line 745
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    if-eqz v1, :cond_2

    .line 751
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 752
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 753
    .local v0, result:Landroid/content/Intent;
    const-string v1, "empty-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setStateResult(ILandroid/content/Intent;)V

    .line 755
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 773
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 759
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 760
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showCameraButton()V

    goto :goto_0

    .line 768
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz v1, :cond_0

    .line 769
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 770
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 771
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideCameraButton()V

    goto :goto_0
.end method

.method private enterPrivateAlbumSelectionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1675
    const v0, 0x7f0d027d

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    .line 1676
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    const v1, 0x7f0d027e

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->enterSelectionMode(Z)V

    .line 1679
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setPrivateMode(Z)V

    .line 1681
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateReload:Z

    .line 1682
    const/16 v0, 0x306

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 1683
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUMSET:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    .line 1684
    return-void
.end method

.method private enterSelectionMode(Z)V
    .locals 1
    .parameter "autoLeave"

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1612
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 1613
    return-void
.end method

.method private enterSetPrivateAlbums()V
    .locals 2

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1090
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1092
    const v1, 0x7f100242

    :try_start_0
    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I

    .line 1093
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->enterPrivateAlbumSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1097
    return-void

    .line 1095
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1297
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 1298
    .local v1, count:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v0

    .line 1299
    .local v0, action:I
    if-ne v0, v5, :cond_0

    const v3, 0x7f110003

    .line 1302
    .local v3, string:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 1303
    .local v2, format:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1299
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #string:I
    :cond_0
    const v3, 0x7f110004

    goto :goto_0
.end method

.method private getSlotCenter(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 354
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 355
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 356
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    .line 357
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v3

    .line 358
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

    .line 359
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 360
    return-void
.end method

.method private hideCameraButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 735
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->setVisibility(I)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 739
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1409
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1410
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1411
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 1412
    return-void
.end method

.method private hideEmptyAlbumToast()V
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 402
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 404
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private initHiddenSet()V
    .locals 5

    .prologue
    .line 1636
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHiddenSetInit:Z

    if-eqz v4, :cond_0

    .line 1651
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .line 1641
    .local v3, totalCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1642
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 1643
    .local v2, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1644
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1645
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/SelectionManager;->addInitialHiddenSet(Lcom/android/gallery3d/data/Path;)V

    .line 1646
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1641
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1649
    .end local v2           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHiddenSetInit:Z

    goto :goto_0
.end method

.method private initPrivateSet()V
    .locals 5

    .prologue
    .line 1655
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsPrivateSetInit:Z

    if-eqz v4, :cond_0

    .line 1672
    :goto_0
    return-void

    .line 1657
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .line 1661
    .local v3, totalCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1662
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 1663
    .local v2, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1664
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1665
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/SelectionManager;->addInitialPrivateSet(Lcom/android/gallery3d/data/Path;)V

    .line 1666
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1661
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1670
    .end local v2           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsPrivateSetInit:Z

    goto :goto_0
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 882
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 884
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 885
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 887
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 888
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 889
    return-void
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 892
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 893
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 895
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    .line 896
    new-instance v0, Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 897
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v5, v5, Lcom/android/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .line 901
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetNumberListener:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setAlbumSetNumberListener(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;)V

    .line 902
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 903
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$8;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 925
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 926
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 927
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->statusBarHeight:I

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mStatusBarHeight:I

    .line 928
    new-instance v0, Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ToolbarView;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    .line 929
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->toolbarHeightPort:I

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarHeightPort:I

    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->toolbarHeightLand:I

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarHeightLand:I

    .line 931
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$9;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->setOnActListener(Lcom/android/gallery3d/ui/ToolbarView$OnActListener;)V

    .line 943
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/ToolbarView;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 946
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 948
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->selectAllHeight:I

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllHeight:I

    .line 949
    new-instance v0, Lcom/android/gallery3d/ui/SelectAllView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v3, v3, Lcom/android/gallery3d/app/Config$AlbumSetPage;->selectAllHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/SelectAllView;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    .line 950
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 952
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 472
    return-void
.end method

.method private onOperatedDone()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1569
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I

    sparse-switch v0, :sswitch_data_0

    .line 1608
    :goto_0
    return-void

    .line 1571
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    .line 1573
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$14;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1584
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->show()V

    goto :goto_0

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->show(I)V

    goto :goto_0

    .line 1592
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    .line 1593
    .local v7, selectedCount:I
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110007

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1594
    .local v6, confirmMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1595
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1599
    .end local v6           #confirmMsg:Ljava/lang/String;
    .end local v7           #selectedCount:I
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    .line 1600
    .restart local v7       #selectedCount:I
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110008

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1601
    .restart local v6       #confirmMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1602
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1569
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100230 -> :sswitch_0
        0x7f10023e -> :sswitch_1
        0x7f100242 -> :sswitch_2
    .end sparse-switch
.end method

.method private onPhotoShareItemClicked()V
    .locals 2

    .prologue
    .line 1816
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->getShareImagePathList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1820
    .local v0, shareImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1823
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->cacheShareItemList(Ljava/util/ArrayList;)V

    .line 1824
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v1, :cond_0

    .line 1825
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareOperationConfirm()V

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 14
    .parameter "slotIndex"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 407
    iget-boolean v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v12, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v12, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    .line 410
    .local v8, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v8, :cond_0

    .line 411
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v12

    if-nez v12, :cond_3

    .line 412
    const-string v11, "photoshare"

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 413
    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/AlbumSetPage;->showEmptyAlbumToast(I)V

    goto :goto_0

    .line 414
    :cond_2
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAddPictureToPhotoShare:Z

    if-nez v10, :cond_0

    .line 415
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v7

    .line 417
    .local v7, targetFolderType:I
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, targetSetName:Ljava/lang/String;
    const-string v10, "folderType"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v10, "folderName"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v10, "folderPath"

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v11, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 422
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #targetFolderType:I
    .end local v9           #targetSetName:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->hide()V

    .line 432
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 434
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, mediaPath:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 437
    .local v2, data:Landroid/os/Bundle;
    const/4 v12, 0x2

    new-array v1, v12, [I

    .line 438
    .local v1, center:[I
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    .line 439
    const-string v12, "set-center"

    invoke-virtual {v2, v12, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 440
    const-string v12, "cluster-type"

    iget v13, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    iget-boolean v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v12, :cond_5

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 444
    .local v0, activity:Landroid/app/Activity;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "album-path"

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 446
    .local v6, result:Landroid/content/Intent;
    const/4 v10, -0x1

    invoke-virtual {v0, v10, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 447
    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    .line 448
    .end local v0           #activity:Landroid/app/Activity;
    .end local v6           #result:Landroid/content/Intent;
    :cond_5
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v12

    if-lez v12, :cond_6

    .line 449
    const-string v10, "media-path"

    invoke-virtual {v2, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v12, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v10, v12, v11, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 453
    :cond_6
    iget-boolean v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v12, :cond_7

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v12

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_7

    .line 455
    const-string v12, "auto-select-all"

    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    :cond_7
    const-string v12, "photoshare-pickmulti"

    iget-boolean v13, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAddPictureToPhotoShare:Z

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const-string v12, "media-path"

    invoke-virtual {v2, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v12, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v12

    const-class v13, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    .line 464
    .local v3, inAlbum:Z
    const-string v12, "cluster-menu"

    if-nez v3, :cond_8

    move v10, v11

    :cond_8
    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v12, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v10, v12, v11, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadingBit"

    .prologue
    .line 776
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 777
    return-void
.end method

.method private setupCameraButton()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 681
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v3

    .line 682
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f1000fb

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 684
    .local v0, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 686
    new-instance v4, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-direct {v4, v5, v6}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    .line 687
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->setActionBar(Lcom/android/gallery3d/app/GalleryActionBar;)V

    .line 688
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 691
    .local v2, matchParent:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    .line 692
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 693
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v5, 0x7f0d0073

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 694
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v5, 0x7f0200eb

    invoke-virtual {v4, v3, v5, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 695
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/gallery3d/app/AlbumSetPage$7;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/AlbumSetPage$7;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 704
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 705
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showAll()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1629
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v3, "gallery_settings"

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1630
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "show_hidden_albums"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1631
    .local v0, all:Z
    return v0
.end method

.method private showCameraButton()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->setupCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->setVisibility(I)V

    .line 725
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->switchSelectionMode(Z)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->switchSelectionMode(Z)V

    goto :goto_0
.end method

.method private showDetailWrapper()V
    .locals 3

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1617
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1618
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_0

    .line 1619
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 1626
    :goto_0
    return-void

    .line 1621
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_0

    .line 1624
    :cond_1
    const v1, 0x7f0d02ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1416
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1417
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1418
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$11;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$11;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1426
    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 3
    .parameter "toastLength"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 389
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    :goto_0
    return-void

    .line 394
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0d02af

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    .restart local v0       #toast:Landroid/widget/Toast;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 396
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showFaceScanBarIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1525
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    .line 1526
    .local v0, enable:Z
    if-eqz v0, :cond_3

    .line 1527
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    if-eqz v1, :cond_0

    .line 1528
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/android/gallery3d/data/FaceInfoProcess;->startScan(Lcom/android/gallery3d/app/GalleryApp;)V

    .line 1529
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    .line 1531
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ToolbarView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1532
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->show()V

    .line 1540
    :cond_2
    :goto_0
    return-void

    .line 1534
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    if-nez v1, :cond_4

    .line 1535
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    .line 1537
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->stopScan()V

    .line 1538
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->hide()V

    goto :goto_0
.end method

.method private showPhotoShareLoginPage()V
    .locals 3

    .prologue
    .line 1775
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1776
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v2, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1777
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1778
    return-void
.end method

.method private switchStateToGalleryFromPhotoShare()V
    .locals 5

    .prologue
    .line 1792
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1793
    .local v1, data:Landroid/os/Bundle;
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getClustertype()I

    move-result v0

    .line 1794
    .local v0, clusterType:I
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1796
    .local v2, newPath:Ljava/lang/String;
    const-string v3, "media-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string v3, "selected-cluster"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1798
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1799
    return-void
.end method

.method private switchStateToPhotoShareFromGallery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1781
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getNeedCompare()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1782
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;

    .line 1783
    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setNeedCompare(Z)V

    .line 1785
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1786
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    const-string v2, "/photoshare/all"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v1, "selected-cluster"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1788
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1789
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 6
    .parameter "clusterType"

    .prologue
    .line 501
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, basePath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, newPath:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 504
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "media-path"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v4, "selected-cluster"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4, p0, v5, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 254
    const v0, 0x7f0a001f

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 331
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->onConfigurationChanged(Landroid/content/res/Resources;)V

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 879
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    .line 515
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 516
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 517
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 518
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    .local v0, context:Landroid/content/Context;
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 520
    const-string v1, "photoshare-pickmulti"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAddPictureToPhotoShare:Z

    .line 521
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    .line 523
    const-string v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 524
    const-string v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    .line 525
    const-string v1, "private-mode"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNeedEnterPrivateMode:Z

    .line 526
    const-string v1, "private-mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 527
    new-instance v1, Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 528
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    .line 529
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 531
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 532
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivacyModeChangeListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->addPrivacyModeChangeListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;)V

    .line 533
    const-string v1, "selected-cluster"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    .line 535
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setClusterType(I)V

    .line 538
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTabsBar(I)Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setListener(Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;)V

    .line 544
    :cond_2
    const/16 v1, 0x20

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v1, v2, :cond_5

    .line 545
    new-instance v1, Lcom/android/gallery3d/ui/FaceScanBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/FaceScanBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    .line 546
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mScanFaceListener:Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;

    invoke-static {v1}, Lcom/android/gallery3d/data/FaceInfoProcess;->addScanListener(Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;)V

    .line 547
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/android/gallery3d/data/FaceInfoProcess;->startScan(Lcom/android/gallery3d/app/GalleryApp;)V

    .line 550
    sget-boolean v1, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-eqz v1, :cond_3

    .line 551
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z

    .line 558
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 559
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->startPhotoStreamUI(Landroid/content/Context;)I

    .line 561
    :cond_4
    new-instance v1, Lcom/android/gallery3d/app/ShareManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/ShareManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    .line 562
    new-instance v1, Lcom/android/gallery3d/app/LongTapManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/LongTapManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    .line 563
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/LongTapManager;->setListener(Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;)V

    .line 629
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$6;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$6;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 656
    new-instance v1, Lcom/android/gallery3d/app/PhotoShareItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/app/PhotoShareItem;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    .line 657
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/PhotoShareItem;->setOnItemClickedListener(Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;)V

    .line 658
    new-instance v1, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    .line 659
    return-void

    .line 556
    :cond_5
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->stopScan()V

    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 23
    .parameter "menu"

    .prologue
    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 957
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v8

    .line 958
    .local v8, inAlbum:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getSupportMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    .line 959
    .local v9, inflater:Landroid/view/MenuInflater;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 960
    const v20, 0x7f120011

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 961
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mAddPictureToPhotoShare:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    const v21, 0x7f0d042e

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 1080
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionBarMenu(Landroid/view/Menu;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/ActionModeHandler;->onRestartActionMode()V

    .line 1085
    :cond_1
    const/16 v20, 0x1

    return v20

    .line 964
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "type-bits"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 966
    .local v18, typeBits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 968
    .end local v18           #typeBits:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 969
    const v20, 0x7f120011

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    const v21, 0x7f0d025d

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 972
    :cond_4
    const v20, 0x7f120001

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 973
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    move/from16 v19, v0

    .line 974
    .local v19, wasShowingClusterMenu:Z
    if-nez v8, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    .line 975
    if-nez v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    .line 977
    .local v14, selectAlbums:Z
    :goto_2
    const v20, 0x7f100237

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 978
    .local v15, selectItem:Landroid/view/MenuItem;
    const v20, 0x7f10023a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mSharingAroundItem:Landroid/view/MenuItem;

    .line 979
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onCreateNearActionBar(Landroid/view/Menu;)V

    .line 980
    if-eqz v14, :cond_14

    const v20, 0x7f0d025d

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 983
    const v20, 0x7f10022c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 984
    .local v3, cameraItem:Landroid/view/MenuItem;
    const v20, 0x7f100230

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 985
    .local v5, deleteItem:Landroid/view/MenuItem;
    const v20, 0x7f10023d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 986
    .local v10, photoShareCreateNewShare:Landroid/view/MenuItem;
    const v20, 0x7f10023b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 987
    .local v13, photoShareSwitchToPhotoShare:Landroid/view/MenuItem;
    const v20, 0x7f10023c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 988
    .local v12, photoShareSwitchToGallery:Landroid/view/MenuItem;
    const v20, 0x7f100239

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 989
    .local v17, settingsItem:Landroid/view/MenuItem;
    const v20, 0x7f100243

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 991
    .local v11, photoShareSettings:Landroid/view/MenuItem;
    if-eqz v17, :cond_5

    .line 992
    sget-object v20, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 994
    :cond_5
    if-eqz v13, :cond_6

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShare()Z

    move-result v20

    if-nez v20, :cond_6

    .line 995
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 996
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 999
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 1000
    if-eqz v3, :cond_7

    .line 1001
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1002
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1005
    :cond_7
    if-eqz v5, :cond_8

    .line 1006
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1007
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1010
    :cond_8
    if-eqz v10, :cond_9

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoShareSwitchOpen(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1014
    :cond_9
    if-eqz v13, :cond_a

    .line 1015
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1016
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1019
    :cond_a
    if-eqz v12, :cond_b

    .line 1020
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1021
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1024
    :cond_b
    if-eqz v17, :cond_c

    .line 1025
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1026
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1029
    :cond_c
    if-eqz v11, :cond_d

    .line 1030
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1031
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1034
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d03f6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 1042
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 1044
    const v20, 0x7f0d037d

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/gallery3d/util/HelpUtils;->getHelpIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v6

    .line 1046
    .local v6, helpIntent:Landroid/content/Intent;
    const v20, 0x7f100244

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1047
    .local v7, helpItem:Landroid/view/MenuItem;
    if-eqz v6, :cond_16

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1048
    if-eqz v6, :cond_f

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1050
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    .line 1051
    const v20, 0x7f100241

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1052
    .local v4, configHide:Landroid/view/MenuItem;
    const v20, 0x7f10023e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1053
    .local v16, setHide:Landroid/view/MenuItem;
    if-eqz v4, :cond_10

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    :cond_10
    if-eqz v16, :cond_11

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1060
    .end local v4           #configHide:Landroid/view/MenuItem;
    .end local v16           #setHide:Landroid/view/MenuItem;
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_18

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    const v21, 0x7f0d00c4

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 1068
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1069
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v20

    if-nez v20, :cond_19

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->show()V

    goto/16 :goto_0

    .line 974
    .end local v3           #cameraItem:Landroid/view/MenuItem;
    .end local v5           #deleteItem:Landroid/view/MenuItem;
    .end local v6           #helpIntent:Landroid/content/Intent;
    .end local v7           #helpItem:Landroid/view/MenuItem;
    .end local v10           #photoShareCreateNewShare:Landroid/view/MenuItem;
    .end local v11           #photoShareSettings:Landroid/view/MenuItem;
    .end local v12           #photoShareSwitchToGallery:Landroid/view/MenuItem;
    .end local v13           #photoShareSwitchToPhotoShare:Landroid/view/MenuItem;
    .end local v14           #selectAlbums:Z
    .end local v15           #selectItem:Landroid/view/MenuItem;
    .end local v17           #settingsItem:Landroid/view/MenuItem;
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 975
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 980
    .restart local v14       #selectAlbums:Z
    .restart local v15       #selectItem:Landroid/view/MenuItem;
    :cond_14
    const v20, 0x7f0d025e

    goto/16 :goto_3

    .line 1037
    .restart local v3       #cameraItem:Landroid/view/MenuItem;
    .restart local v5       #deleteItem:Landroid/view/MenuItem;
    .restart local v10       #photoShareCreateNewShare:Landroid/view/MenuItem;
    .restart local v11       #photoShareSettings:Landroid/view/MenuItem;
    .restart local v12       #photoShareSwitchToGallery:Landroid/view/MenuItem;
    .restart local v13       #photoShareSwitchToPhotoShare:Landroid/view/MenuItem;
    .restart local v17       #settingsItem:Landroid/view/MenuItem;
    :cond_15
    if-eqz v3, :cond_e

    .line 1038
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1047
    .restart local v6       #helpIntent:Landroid/content/Intent;
    .restart local v7       #helpItem:Landroid/view/MenuItem;
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1056
    :cond_17
    const v20, 0x7f100242

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mSetPrivateItem:Landroid/view/MenuItem;

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetPrivateItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSetPrivateItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isPrivacyMode()Z

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1064
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1074
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->hide()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->hide()V

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->cleanupCameraButton()V

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivacyModeChangeListener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->removePrivacyModeChangeListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;)V

    .line 668
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 669
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setListener(Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;)V

    .line 672
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 673
    const/16 v0, 0x20

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v0, v1, :cond_2

    .line 674
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mScanFaceListener:Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;

    invoke-static {v0}, Lcom/android/gallery3d/data/FaceInfoProcess;->removeScanListener(Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;)V

    .line 675
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceScanBar;->deconstruct()V

    .line 676
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->stopScan()V

    .line 678
    :cond_2
    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 317
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    .line 318
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    .line 319
    iput p3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 322
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    iput v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I

    .line 1102
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1103
    .local v1, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    move v7, v8

    .line 1237
    :cond_0
    :goto_0
    :sswitch_0
    return v7

    .line 1106
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onBackPressed()V

    goto :goto_0

    .line 1118
    :sswitch_2
    invoke-virtual {v1, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    .line 1119
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    .line 1122
    :sswitch_3
    const v9, 0x7f0d039d

    iput v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    .line 1123
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    const v10, 0x7f0d03a2

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1124
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/AlbumSetPage;->enterSelectionMode(Z)V

    .line 1126
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/SelectionManager;->setHiddenMode(Z)V

    .line 1128
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showAll()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1129
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initHiddenSet()V

    goto :goto_0

    .line 1131
    :cond_1
    iput-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHiddenReload:Z

    .line 1133
    const/16 v8, 0x106

    iput v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 1134
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isPrivacyMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1135
    iget v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 1137
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    sget-object v9, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUMSET:Landroid/net/Uri;

    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1143
    :sswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->enterPrivateAlbumSelectionMode()V

    goto :goto_0

    .line 1147
    :sswitch_5
    const v9, 0x7f0d0269

    iput v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    .line 1148
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    const v11, -0x2bc1db

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(II)V

    .line 1149
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/AlbumSetPage;->enterSelectionMode(Z)V

    goto :goto_0

    .line 1153
    :sswitch_6
    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1154
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 1157
    :sswitch_7
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetailWrapper()V

    goto :goto_0

    .line 1160
    :sswitch_8
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 1164
    :sswitch_9
    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToPhotoShareFromGalleryClicked:Z

    if-nez v8, :cond_0

    .line 1165
    iput-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToPhotoShareFromGalleryClicked:Z

    .line 1166
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1167
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isHiCloudLogin(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isNeedTriggerHiCloudAutoLogOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoSwitchOpen(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1170
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showPhotoShareLoginPage()V

    goto/16 :goto_0

    .line 1172
    :cond_5
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1178
    .end local v2           #context:Landroid/content/Context;
    :sswitch_a
    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToGalleryFromPhotoShareClicked:Z

    if-nez v8, :cond_0

    .line 1179
    iput-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToGalleryFromPhotoShareClicked:Z

    .line 1180
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1185
    :sswitch_b
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.huawei.android.intent.action.photoshare.SWITCH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v5, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1189
    :catch_0
    move-exception v4

    .line 1190
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "AlbumSetPage"

    const-string v9, "unable to start HiCloud CloudPhoto Setting Activity!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    :sswitch_c
    move v7, v8

    .line 1196
    goto/16 :goto_0

    .line 1199
    :sswitch_d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1200
    .local v3, data:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v6

    .line 1202
    .local v6, mediaPath:Ljava/lang/String;
    const-string v8, "media-path"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v9, Lcom/android/gallery3d/app/ManageCachePage;

    invoke-virtual {v8, v9, v3}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1207
    .end local v3           #data:Landroid/os/Bundle;
    .end local v6           #mediaPath:Ljava/lang/String;
    :sswitch_e
    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1211
    :sswitch_f
    new-instance v0, Lcom/android/gallery3d/ui/ActionSetOnOff;

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v9, "show_hidden_albums"

    const v10, 0x7f0d027c

    invoke-direct {v0, v8, v9, v10}, Lcom/android/gallery3d/ui/ActionSetOnOff;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1213
    .local v0, actionSet:Lcom/android/gallery3d/ui/ActionSetOnOff;
    new-instance v8, Lcom/android/gallery3d/app/AlbumSetPage$10;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/app/AlbumSetPage$10;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/ui/ActionSetOnOff;->setLinstener(Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;)V

    .line 1222
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionSetOnOff;->show()V

    goto/16 :goto_0

    .line 1226
    .end local v0           #actionSet:Lcom/android/gallery3d/ui/ActionSetOnOff;
    :sswitch_10
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/gallery3d/settings/GallerySettings;

    invoke-direct {v8, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1230
    :sswitch_11
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1231
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v9, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1232
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1233
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v10}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1103
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f10022c -> :sswitch_8
        0x7f10022d -> :sswitch_c
        0x7f100230 -> :sswitch_5
        0x7f100237 -> :sswitch_6
        0x7f100239 -> :sswitch_10
        0x7f10023a -> :sswitch_0
        0x7f10023b -> :sswitch_9
        0x7f10023c -> :sswitch_a
        0x7f10023d -> :sswitch_11
        0x7f10023e -> :sswitch_3
        0x7f10023f -> :sswitch_d
        0x7f100240 -> :sswitch_e
        0x7f100241 -> :sswitch_f
        0x7f100242 -> :sswitch_4
        0x7f100243 -> :sswitch_b
        0x7f10027a -> :sswitch_7
        0x7f10027c -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapSlotIndex:I

    .line 486
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 488
    .local v0, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 490
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 491
    :cond_2
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;-><init>(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/DataManager;)V

    .line 492
    .local v1, sw:Lcom/android/gallery3d/app/AlbumSetPage$ShareWorker;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;

    .line 493
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/gallery3d/app/LongTapManager;->show(Lcom/android/gallery3d/data/MediaSet;II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 782
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 783
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 784
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 785
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 786
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 798
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 800
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->unregister()V

    .line 803
    :cond_1
    const/16 v0, 0x20

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v0, v1, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceScanBar;->hide()V

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v0, :cond_3

    .line 807
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onPause()V

    .line 809
    :cond_3
    return-void
.end method

.method public onResume(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 813
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 814
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 815
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 818
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 819
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 821
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v0, v2, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/high16 v3, 0x600

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SelectionManager;->initSupportOperation(I)V

    .line 824
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->register()V

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 828
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 831
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->show()V

    .line 836
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v0, :cond_3

    .line 837
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 838
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 840
    :cond_3
    const/16 v0, 0x20

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v0, v3, :cond_4

    .line 841
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showFaceScanBarIfNeeded()V

    .line 843
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNeedEnterPrivateMode:Z

    if-eqz v0, :cond_8

    .line 844
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->enterSetPrivateAlbums()V

    .line 845
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNeedEnterPrivateMode:Z

    .line 857
    :goto_0
    const-string v0, "photoshare"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 863
    :cond_5
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isNeedLoadingPhotoShare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 864
    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setPhotoShareAlbumSet(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 867
    :cond_6
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSwitchToPhotoShareFromGalleryClicked:Z

    .line 869
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v0, :cond_a

    :cond_7
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 871
    return-void

    .line 848
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 849
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 853
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v3, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUMSET:Landroid/net/Uri;

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    goto :goto_0

    .line 851
    :cond_9
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    goto :goto_2

    :cond_a
    move v0, v1

    .line 869
    goto :goto_1
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    .line 1398
    return-void
.end method

.method public onSelectionLimitExceed()V
    .locals 0

    .prologue
    .line 1404
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1308
    packed-switch p1, :pswitch_data_0

    .line 1390
    :goto_0
    return-void

    .line 1311
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->hide()V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 1315
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ToolbarView;->setVisibility(I)V

    .line 1318
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->switchSelectionMode(Z)V

    .line 1324
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v5, v0, :cond_3

    .line 1325
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceScanBar;->hide()V

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 1335
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 1336
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-eqz v0, :cond_4

    .line 1338
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->show()V

    .line 1340
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/ToolbarView;->setVisibility(I)V

    .line 1341
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHiddenReload:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateReload:Z

    if-eqz v0, :cond_7

    .line 1343
    :cond_5
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHiddenSetInit:Z

    .line 1344
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsPrivateSetInit:Z

    .line 1346
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHiddenReload:Z

    .line 1347
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateReload:Z

    .line 1349
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 1350
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1351
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    .line 1353
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUMSET:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mReloadType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    .line 1357
    :cond_7
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    if-eqz v0, :cond_8

    .line 1358
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyBackground:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->switchSelectionMode(Z)V

    .line 1363
    :cond_8
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-ne v5, v0, :cond_9

    .line 1364
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceScanBar;->show()V

    .line 1367
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 1370
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    goto/16 :goto_0

    .line 1375
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    .line 1376
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_0

    .line 1382
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_0

    .line 1308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 363
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 367
    .local v0, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 369
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 372
    .end local v0           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 373
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 375
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v7, 0xe

    const/4 v6, -0x1

    .line 1246
    sparse-switch p1, :sswitch_data_0

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1248
    :sswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 1253
    :sswitch_1
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapSlotIndex:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1254
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoSharePathToAdd:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1255
    if-ne p2, v6, :cond_0

    invoke-static {v3}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    if-ne v7, v4, :cond_0

    .line 1257
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 1258
    .local v2, orgPhotoPath:[Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraPicture:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1259
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1262
    .end local v2           #orgPhotoPath:[Ljava/lang/String;
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :catch_0
    move-exception v1

    .line 1263
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AlbumSetPage"

    const-string v5, "REQUEST_CAMERA The Album not exist any longer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1269
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapSlotIndex:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1270
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoSharePathToAdd:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1271
    if-ne p2, v6, :cond_0

    invoke-static {v3}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    if-ne v7, v4, :cond_0

    .line 1273
    const-string v4, "photoshare-addpictures-arraylist"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1274
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 1276
    .restart local v2       #orgPhotoPath:[Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1280
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #orgPhotoPath:[Ljava/lang/String;
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :catch_1
    move-exception v1

    .line 1281
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "AlbumSetPage"

    const-string v5, "REQUEST_MULTIPICK The Album not exist any longer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1286
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_3
    if-ne p2, v6, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onPhotoShareItemClicked()V

    goto/16 :goto_0

    .line 1246
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 1430
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1431
    const-string v0, "AlbumSetPage"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$12;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage$12;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1452
    return-void
.end method

.method public photoShareAddPicture(Lcom/android/gallery3d/data/Path;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoSharePathToAdd:Lcom/android/gallery3d/data/Path;

    .line 1803
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createCameraFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraPicture:Ljava/io/File;

    .line 1804
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraPicture:Ljava/io/File;

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createChooseAddPictureDialog(Landroid/app/Activity;Ljava/io/File;II)V

    .line 1805
    return-void
.end method
