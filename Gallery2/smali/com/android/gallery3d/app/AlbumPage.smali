.class public Lcom/android/gallery3d/app/AlbumPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_CLUSTER_TYPE:Ljava/lang/String; = "cluster-type"

.field public static final KEY_EMPTY_ALBUM:Ljava/lang/String; = "empty-album"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field private static final MSG_HICLOUD_LOGOUT:I = 0xf

.field private static final MSG_PICK_PHOTO:I = 0x0

.field private static final MSG_RETURN_BACK:I = 0xc

.field private static final MSG_RUN_SHARE_TASK:I = 0x1

.field private static final REQUEST_CAMERA:I = 0xa

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field private static final REQUEST_MULTIPICK:I = 0xb

.field public static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_PHOTOSHARE_LOGIN:I = 0xd

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private mActionBarShareListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAddPictureToPhotoShare:Z

.field private mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

.field private mCameraPicture:Ljava/io/File;

.field private mChoosedShareIntent:Landroid/content/Intent;

.field private mClickedItemId:I

.field private mClickedItemTitle:I

.field private mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCameraAndWantQuitOnPause:Z

.field private mInCameraApp:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromDmsSetPage:Z

.field private mLaunchedFromPhotoPage:Z

.field private mLimitExceedConifrm:Ljava/lang/String;

.field private mLimitExceedMessage:Ljava/lang/String;

.field private mLimitExceedTitle:Ljava/lang/String;

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

.field private mLongTapShareManager:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

.field private mLongTapSlotIndex:I

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

.field private mParentClusterType:I

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

.field private mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

.field private mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

.field private mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

.field private mPhotoShareLongTapShare:Z

.field private mPhotoShareTitle:Ljava/lang/String;

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mReload:Z

.field private mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectAllHeight:I

.field private mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShareIntentTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShareIntents:[Landroid/content/Intent;

.field private mShareItemPath:Ljava/lang/String;

.field private mShareManager:Lcom/android/gallery3d/app/ShareManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mStatusBarHeight:I

.field private mSyncResult:I

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

.field private mToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mToastStringCache:Ljava/lang/String;

.field private mToolbarHeightLand:I

.field private mToolbarHeightPort:I

.field private mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

.field private mType:I

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;

.field private notWantVideoOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 140
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 161
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 167
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 173
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 174
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 177
    new-instance v0, Lcom/android/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 200
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mToast:Ljava/lang/ref/WeakReference;

    .line 205
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareLongTapShare:Z

    .line 224
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$1;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 252
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$2;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 1345
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$11;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$11;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBarShareListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

    .line 1373
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$12;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$12;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapShareManager:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    .line 1577
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->notWantVideoOnly:Z

    .line 1739
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$19;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$19;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    return-void
.end method

.method private ActOnItemClicked(II)Z
    .locals 7
    .parameter "resId"
    .parameter "slotIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1652
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1705
    :goto_0
    return v3

    .line 1654
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v3, v4

    .line 1705
    goto :goto_0

    .line 1656
    :sswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/app/ShareManager;->setOnItemClickedListener(Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;)V

    .line 1657
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {p0, v5, p2}, Lcom/android/gallery3d/app/AlbumPage;->getShareIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/ShareManager;->setIntent(Landroid/content/Intent;)V

    .line 1658
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/ShareManager;->setGalleryActivity(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 1659
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapShareManager:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/ShareManager;->setSingleVoiceShareListener(Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;)V

    .line 1660
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/ShareManager;->show()V

    .line 1661
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 1662
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareItemPath:Ljava/lang/String;

    .line 1663
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareLongTapShare:Z

    goto :goto_0

    .line 1667
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v4, :cond_1

    .line 1668
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    goto :goto_0

    .line 1670
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_0

    .line 1675
    :sswitch_2
    const-string v4, "android.intent.action.EDIT"

    invoke-direct {p0, v4, p2}, Lcom/android/gallery3d/app/AlbumPage;->getIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1677
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1681
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1682
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "com.android.camera.action.EDITOR_CROP"

    invoke-direct {p0, v4, p2}, Lcom/android/gallery3d/app/AlbumPage;->getIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1683
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v4, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1684
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1685
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1689
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    const-string v4, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v4, p2}, Lcom/android/gallery3d/app/AlbumPage;->getIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1690
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1691
    const-string v4, "mimeType"

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v5, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1693
    .restart local v0       #activity:Landroid/app/Activity;
    const v4, 0x7f0d0479

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1697
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-direct {p0, v3, p2}, Lcom/android/gallery3d/app/AlbumPage;->handleOnCopyLongTapConfirm(II)V

    move v3, v4

    .line 1698
    goto/16 :goto_0

    .line 1701
    :sswitch_6
    const/4 v3, 0x2

    invoke-direct {p0, v3, p2}, Lcom/android/gallery3d/app/AlbumPage;->handleOnCopyLongTapConfirm(II)V

    move v3, v4

    .line 1702
    goto/16 :goto_0

    .line 1654
    :sswitch_data_0
    .sparse-switch
        0x7f0d01eb -> :sswitch_3
        0x7f0d026d -> :sswitch_0
        0x7f0d0279 -> :sswitch_1
        0x7f0d0294 -> :sswitch_2
        0x7f0d03da -> :sswitch_5
        0x7f0d03db -> :sswitch_6
        0x7f0d0479 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumPage;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage;->ActOnItemClicked(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->runShareTask()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onOperatedDone()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumPage;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/gallery3d/app/AlbumPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarHeightPort:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapSlotIndex:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/AlbumPage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mChoosedShareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/gallery3d/app/AlbumPage;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mChoosedShareIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mType:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/gallery3d/app/AlbumPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarHeightLand:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mReload:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/MenuExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/AlbumPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemId:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->handlePhotoShareActionShare()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/AlbumPage;ZZLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AlbumPage;->handleOperationShareDoneInternal(ZZLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->notWantVideoOnly:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->notWantVideoOnly:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/AlbumPage;)[Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/gallery3d/app/AlbumPage;[Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareIntents:[Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onPhotoShareItemClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ToolbarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SelectAllView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    return-object v0
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter "loadTaskBit"

    .prologue
    .line 1278
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 1279
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1282
    .local v0, result:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1283
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1286
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private enterSelectionMode(Z)V
    .locals 1
    .parameter "autoLeave"

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1573
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 1574
    return-void
.end method

.method private getIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .parameter "action"
    .parameter "slotIndex"

    .prologue
    .line 1621
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1622
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    .line 1623
    .local v2, type:I
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 1624
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    return-object v0
.end method

.method private getShareIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "action"
    .parameter "slotIndex"

    .prologue
    .line 1630
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v5, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1631
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    .line 1632
    .local v3, type:I
    :goto_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 1633
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1636
    const-string v5, "watermark_item"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v2, pathCharSequence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    const-string v5, "KEY_CONTAIN_VOICEIMAGE"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isVoiceImage()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1640
    const-string v5, "KEY_PATH_ARRAY"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1641
    return-object v0

    .line 1631
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pathCharSequence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3           #type:I
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    goto :goto_0
.end method

.method private handleOnCopyConfirm(I)V
    .locals 6
    .parameter "pasteType"

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->isExcuting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1552
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/PasteExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/PasteExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/data/Path;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    .line 1554
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->onPasteOperationConfirm()V

    goto :goto_0
.end method

.method private handleOnCopyLongTapConfirm(II)V
    .locals 8
    .parameter "pasteType"
    .parameter "slotIndex"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->isExcuting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1561
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/PasteExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/PasteExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/data/Path;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    .line 1564
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 1565
    .local v6, itemPath:Lcom/android/gallery3d/data/Path;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/PasteExecutor;->setCustomPasteList(Ljava/util/ArrayList;)V

    .line 1568
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->onPasteOperationConfirm()V

    goto :goto_0
.end method

.method private handleOperationShareDone()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1463
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0d03f6

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1464
    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$14;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$14;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    .line 1475
    .local v2, mThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1495
    .end local v2           #mThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1479
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1480
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/ShareManager;->getShareIntentType()I

    move-result v3

    .line 1481
    .local v3, shareType:I
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v8}, Lcom/android/gallery3d/util/ImageVideoTranser;->getVoiceImageCountInArray(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v6

    .line 1482
    .local v6, voiceImageCount:I
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_1

    if-lez v6, :cond_1

    .line 1483
    .local v5, shouldTransToVideo:Z
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v8}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSupportedForArray(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v4

    .line 1484
    .local v4, shouldAddWaterMark:Z
    if-eqz v5, :cond_2

    .line 1485
    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$15;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/gallery3d/app/AlbumPage$15;-><init>(Lcom/android/gallery3d/app/AlbumPage;ZLjava/util/ArrayList;)V

    .line 1491
    .local v1, mShareUserVIListener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7, v1, v3}, Lcom/android/gallery3d/ui/ShareExecutor;->requestForUserConfirmForVI(Landroid/content/Context;Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;I)V

    goto :goto_0

    .end local v1           #mShareUserVIListener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;
    .end local v4           #shouldAddWaterMark:Z
    .end local v5           #shouldTransToVideo:Z
    :cond_1
    move v5, v7

    .line 1482
    goto :goto_1

    .line 1493
    .restart local v4       #shouldAddWaterMark:Z
    .restart local v5       #shouldTransToVideo:Z
    :cond_2
    invoke-direct {p0, v7, v4, v0}, Lcom/android/gallery3d/app/AlbumPage;->handleOperationShareDoneInternal(ZZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private handleOperationShareDoneInternal(ZZLjava/util/ArrayList;)V
    .locals 3
    .parameter "shouldTransToVideo"
    .parameter "shouldAddWaterMark"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1498
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage$16;-><init>(Lcom/android/gallery3d/app/AlbumPage;ZZ)V

    .line 1545
    .local v0, mListener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {p3, v1, v2, v0}, Lcom/android/gallery3d/ui/ShareExecutor;->convertShareItems(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;)V

    .line 1546
    return-void
.end method

.method private handlePhotoShareActionShare()V
    .locals 9

    .prologue
    .line 1769
    const-string v7, ""

    iput-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareTitle:Ljava/lang/String;

    .line 1770
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 1771
    .local v4, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1772
    .local v5, photoShareItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 1773
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 1774
    .local v3, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 1775
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v6

    .line 1776
    .local v6, support:I
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_0

    .line 1777
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1780
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #path:Lcom/android/gallery3d/data/Path;
    .end local v6           #support:I
    :cond_1
    invoke-static {v5}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->cacheShareItemList(Ljava/util/ArrayList;)V

    .line 1781
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v7, :cond_2

    .line 1782
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareOperationConfirm()V

    .line 1784
    :cond_2
    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 821
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 823
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 824
    return-void
.end method

.method private hideToast()V
    .locals 2

    .prologue
    .line 1724
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 1726
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1728
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 791
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 792
    const-string v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 795
    const-string v0, "MediaSet is null. Path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 798
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    .line 803
    return-void
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 730
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 731
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 732
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 733
    .local v0, config:Lcom/android/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 735
    sget-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->enableClickAnimation()V

    .line 739
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget v5, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .line 741
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 742
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 743
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$5;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 764
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 765
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 766
    iget v1, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->statusBarHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mStatusBarHeight:I

    .line 767
    new-instance v1, Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ToolbarView;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    .line 768
    iget v1, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->toolbarHeightPort:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarHeightPort:I

    .line 769
    iget v1, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->toolbarHeightLand:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarHeightLand:I

    .line 770
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$6;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$6;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ToolbarView;->setOnActListener(Lcom/android/gallery3d/ui/ToolbarView$OnActListener;)V

    .line 781
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/ui/ToolbarView;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 784
    iget v1, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->selectAllHeight:I

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllHeight:I

    .line 785
    new-instance v1, Lcom/android/gallery3d/ui/SelectAllView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllHeight:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SelectAllView;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    .line 786
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 787
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 788
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 379
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 461
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->canForward()Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0379

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 486
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 468
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 469
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 471
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 472
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 475
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 476
    const-string v4, "return-data"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 479
    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    .line 481
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 483
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 484
    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0
.end method

.method private onOperatedDone()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1392
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemId:I

    sparse-switch v0, :sswitch_data_0

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1394
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    if-nez v0, :cond_1

    .line 1395
    new-instance v0, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    .line 1396
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$13;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1407
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->show()V

    goto :goto_0

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->show(I)V

    goto :goto_0

    .line 1414
    :sswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->handleOperationShareDone()V

    goto :goto_0

    .line 1418
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemId:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0

    .line 1423
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->handleOnCopyConfirm(I)V

    goto :goto_0

    .line 1428
    :sswitch_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->handleOnCopyConfirm(I)V

    goto :goto_0

    .line 1433
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 1435
    .local v12, selectedAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1436
    .local v11, result:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1437
    .local v7, bundle:Landroid/os/Bundle;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v6, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 1439
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/Path;

    .line 1440
    .local v10, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v13

    .line 1441
    .local v13, selectedItem:Lcom/android/gallery3d/data/MediaObject;
    check-cast v13, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local v13           #selectedItem:Lcom/android/gallery3d/data/MediaObject;
    iget-object v0, v13, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1443
    .end local v10           #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    const-string v0, "photoshare-addpictures-arraylist"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1444
    invoke-virtual {v11, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1445
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 1446
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    .line 1452
    .end local v6           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v8           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #result:Landroid/content/Intent;
    .end local v12           #selectedAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemId:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    new-instance v3, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 1453
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto/16 :goto_0

    .line 1392
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d042f -> :sswitch_5
        0x7f10022d -> :sswitch_1
        0x7f10022f -> :sswitch_6
        0x7f100230 -> :sswitch_0
        0x7f100231 -> :sswitch_3
        0x7f100232 -> :sswitch_4
        0x7f100234 -> :sswitch_6
        0x7f10023e -> :sswitch_2
    .end sparse-switch
.end method

.method private onPhotoShareItemClicked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1748
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareLongTapShare:Z

    if-eqz v0, :cond_2

    .line 1749
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareItemPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->cacheShareItem(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareOperationConfirm()V

    .line 1753
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareLongTapShare:Z

    .line 1766
    :cond_1
    :goto_0
    return-void

    .line 1755
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    .line 1756
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setCheckOperatoin(I)V

    .line 1757
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0d03f6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareTitle:Ljava/lang/String;

    .line 1758
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1761
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mType:I

    and-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mType:I

    if-ge v0, v1, :cond_1

    .line 1762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mReload:Z

    .line 1763
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUM:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 395
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 397
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 400
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 401
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 403
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 382
    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 365
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 368
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 371
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private photoShareClearNewFlag()V
    .locals 2

    .prologue
    .line 1731
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v1}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    .line 1732
    .local v0, type:I
    const/16 v1, 0xd

    if-eq v1, v0, :cond_0

    const/16 v1, 0xe

    if-eq v1, v0, :cond_0

    const/16 v1, 0xf

    if-ne v1, v0, :cond_1

    .line 1735
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/android/gallery3d/data/PhotoShareAlbum;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->updatePhotoShareAlbum(Lcom/android/gallery3d/data/PhotoShareAlbum;)V

    .line 1737
    :cond_1
    return-void
.end method

.method private pickPhoto(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    .line 410
    return-void
.end method

.method private pickPhoto(IZ)V
    .locals 7
    .parameter "slotIndex"
    .parameter "startInFilmstrip"

    .prologue
    const/4 v6, 0x1

    .line 413
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v3, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    if-nez p2, :cond_2

    .line 417
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 420
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 421
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 422
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v3, :cond_3

    .line 423
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 424
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v3, :cond_4

    .line 425
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 426
    .local v2, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    const-string v3, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 434
    .end local v2           #transitions:Lcom/android/gallery3d/app/TransitionStore;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->photoShareClearNewFlag()V

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 436
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "index-hint"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v3, "open-animation-rect"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    const-string v3, "media-set-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v3, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v3, "albumpage-transition"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v3, "start-in-filmstrip"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-string v3, "media-count"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    const-string v3, "in_camera_roll"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    if-eqz p2, :cond_5

    .line 452
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 454
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private prepareAnimationBackToFilmstrip(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 898
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 900
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 901
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    .line 902
    .local v1, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v2, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 903
    const-string v2, "open-animation-rect"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private runShareTask()V
    .locals 3

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$17;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$17;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$18;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$18;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareIntentTask:Lcom/android/gallery3d/util/Future;

    .line 1618
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadTaskBit"

    .prologue
    .line 1274
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 1275
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 807
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$7;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 817
    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 3
    .parameter "loadingFailed"

    .prologue
    .line 1266
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0d02a5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1271
    :cond_1
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .parameter "content"
    .parameter "toastLength"

    .prologue
    .line 1710
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 1712
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1721
    :goto_0
    return-void

    .line 1718
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1719
    .restart local v0       #toast:Landroid/widget/Toast;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToast:Ljava/lang/ref/WeakReference;

    .line 1720
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private switchToFilmstrip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 908
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 916
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 910
    .local v0, targetPhoto:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->prepareAnimationBackToFilmstrip(I)V

    .line 911
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v1, :cond_1

    .line 912
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 914
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public checkAllSelectedItem()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1199
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getProcessingList(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 1200
    .local v3, selectItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 1201
    .local v4, tmpPath:Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 1202
    .local v2, item:Lcom/android/gallery3d/data/MediaObject;
    if-nez v2, :cond_1

    .line 1209
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaObject;
    .end local v3           #selectItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #tmpPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    return v5

    .line 1203
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaObject;
    .restart local v3       #selectItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v4       #tmpPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/SelectionManager;->canOperate(Lcom/android/gallery3d/data/Path;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 1206
    .end local v2           #item:Lcom/android/gallery3d/data/MediaObject;
    .end local v4           #tmpPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 1207
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #selectItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "AlbumPage"

    const-string v7, "RuntimeException when check all selected item, just return false"

    invoke-static {v6, v7, v0}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doCluster(I)V
    .locals 7
    .parameter "clusterType"

    .prologue
    .line 517
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, basePath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, newPath:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 520
    .local v2, data:Landroid/os/Bundle;
    const-string v4, "media-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v4, "selected-cluster"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    if-eqz v4, :cond_0

    .line 523
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 524
    .local v1, context:Landroid/content/Context;
    const-string v4, "set-title"

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v4, "set-subtitle"

    invoke-static {v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 532
    return-void
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f0a0025

    return v0
.end method

.method protected onBackPressed()V
    .locals 3

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 362
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 348
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "albumpage-transition"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->photoShareClearNewFlag()V

    .line 356
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_3

    .line 357
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 359
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 677
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const v4, 0x7f0d042f

    const/4 v3, 0x0

    .line 536
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 537
    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 540
    const-string v1, "cluster-type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentClusterType:I

    .line 543
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V

    .line 544
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 545
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 546
    const-string v1, "photoshare-pickmulti"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    .line 547
    const-string v1, "cluster-menu"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    .line 548
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/DmsSetPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromDmsSetPage:Z

    .line 549
    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    .line 550
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 551
    .local v0, context:Landroid/content/Context;
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    .line 554
    const-string v1, "auto-select-all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 558
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 560
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-eqz v1, :cond_1

    .line 561
    iput v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 562
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 563
    iput v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemId:I

    .line 564
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    .line 568
    const-string v1, "app-bridge"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    .line 569
    new-instance v1, Lcom/android/gallery3d/app/LongTapManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/LongTapManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    .line 570
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$3;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/LongTapManager;->setListener(Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;)V

    .line 581
    new-instance v1, Lcom/android/gallery3d/app/ShareManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/ShareManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    .line 582
    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$4;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$4;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 613
    new-instance v1, Lcom/android/gallery3d/app/PhotoShareItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/app/PhotoShareItem;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    .line 614
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/PhotoShareItem;->setOnItemClickedListener(Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;)V

    .line 615
    new-instance v1, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    .line 616
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/16 v9, 0xf

    const v8, 0x7f100239

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 828
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 829
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getSupportMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 830
    .local v1, inflator:Landroid/view/MenuInflater;
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-eqz v4, :cond_2

    .line 831
    const v4, 0x7f0d042e

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 887
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 890
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionBarMenu(Landroid/view/Menu;)V

    .line 891
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 892
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ActionModeHandler;->onRestartActionMode()V

    .line 894
    :cond_1
    return v5

    .line 832
    :cond_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v4, :cond_3

    .line 833
    const v4, 0x7f120011

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 834
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v6, "type-bits"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 836
    .local v3, typeBits:I
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 837
    .end local v3           #typeBits:I
    :cond_3
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromDmsSetPage:Z

    if-eqz v4, :cond_4

    .line 838
    const v4, 0x7f120003

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 839
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_4
    const/high16 v4, 0x7f12

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 842
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 844
    const v4, 0x7f10022b

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 845
    const v4, 0x7f100236

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v4, v4, Lcom/android/gallery3d/data/MtpDevice;

    if-nez v4, :cond_c

    move v4, v5

    :goto_1
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 847
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 848
    .local v2, settingsItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_5

    .line 849
    sget-object v4, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 852
    :cond_5
    const/16 v4, 0xe

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v7}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v7

    if-ne v4, v7, :cond_6

    .line 853
    const v4, 0x7f10022e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 854
    const v4, 0x7f100235

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 855
    const v4, 0x7f100234

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 856
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 858
    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v4}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    if-ne v9, v4, :cond_7

    .line 859
    const v4, 0x7f100230

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 862
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isInPhotoShareSourceType(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 863
    const v4, 0x7f10022d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 864
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 866
    :cond_8
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v4}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    if-eq v9, v4, :cond_9

    const/16 v4, 0xd

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v7}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v7

    if-ne v4, v7, :cond_a

    .line 868
    :cond_9
    const v4, 0x7f10022f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 869
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 872
    :cond_a
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v0, v4, v5}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 875
    const v4, 0x7f100238

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    const v4, 0x7f10022c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v7}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v6, v5

    :cond_b
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 881
    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentClusterType:I

    if-ne v4, v5, :cond_0

    .line 882
    const v4, 0x7f100231

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 883
    const v4, 0x7f100232

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v2           #settingsItem:Landroid/view/MenuItem;
    :cond_c
    move v4, v6

    .line 845
    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 723
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 724
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 727
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/16 v8, 0x1f4

    const v7, 0x7f0d03cd

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 920
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemId:I

    .line 921
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 1054
    :cond_0
    :goto_0
    return v1

    .line 924
    :sswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->photoShareClearNewFlag()V

    .line 931
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0

    .line 935
    :sswitch_1
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onRefreshButtonClicked()V

    goto :goto_0

    .line 939
    :sswitch_2
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-nez v3, :cond_2

    .line 940
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    .line 943
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    .line 948
    :sswitch_3
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 949
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 952
    :sswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto :goto_0

    .line 956
    :sswitch_5
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraAndWantQuitOnPause:Z

    .line 957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 958
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v2, "repeat"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 966
    .end local v0           #data:Landroid/os/Bundle;
    :sswitch_6
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v2, :cond_3

    .line 967
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    goto :goto_0

    .line 969
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_0

    .line 974
    :sswitch_7
    const v3, 0x7f0d0269

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 975
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    .line 976
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    const v5, -0x2bc1db

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(II)V

    .line 977
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    .line 978
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const v3, 0x7f100230

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->setCheckOperatoin(I)V

    goto/16 :goto_0

    .line 982
    :sswitch_8
    const v3, 0x7f0d026d

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 983
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    .line 985
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0d047d

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mLimitExceedTitle:Ljava/lang/String;

    .line 986
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110011

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v8, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLimitExceedMessage:Ljava/lang/String;

    .line 988
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0d0251

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLimitExceedConifrm:Ljava/lang/String;

    .line 990
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    if-eqz v1, :cond_5

    .line 991
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShareFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/ShareManager;->addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z

    .line 994
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareLongTapShare:Z

    .line 997
    :cond_4
    const/4 v1, 0x4

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mType:I

    if-ne v1, v3, :cond_5

    .line 998
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/ShareManager;->removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V

    .line 1001
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionBarShareListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/ShareManager;->setOnItemClickedListener(Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;)V

    .line 1002
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareIntents:[Landroid/content/Intent;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/ShareManager;->setIntents([Landroid/content/Intent;)V

    .line 1003
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ShareManager;->show()V

    move v1, v2

    .line 1005
    goto/16 :goto_0

    .line 1008
    :sswitch_9
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1013
    :sswitch_a
    const v3, 0x7f0d03da

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 1014
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    .line 1015
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1016
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    .line 1017
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const v3, 0x7f100231

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->setCheckOperatoin(I)V

    goto/16 :goto_0

    .line 1022
    :sswitch_b
    const v3, 0x7f0d03db

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 1023
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    .line 1024
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1025
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    .line 1026
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const v3, 0x7f100232

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->setCheckOperatoin(I)V

    goto/16 :goto_0

    .line 1030
    :sswitch_c
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createCameraFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mCameraPicture:Ljava/io/File;

    .line 1031
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mCameraPicture:Ljava/io/File;

    const/16 v4, 0xb

    const/16 v5, 0xa

    invoke-static {v2, v3, v4, v5}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createChooseAddPictureDialog(Landroid/app/Activity;Ljava/io/File;II)V

    goto/16 :goto_0

    .line 1036
    :sswitch_d
    const v3, 0x7f0d03f7

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    .line 1037
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    .line 1038
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    const v4, 0x7f0d03f8

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1039
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V

    .line 1040
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const v3, 0x7f10022f

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->setCheckOperatoin(I)V

    goto/16 :goto_0

    .line 1044
    :sswitch_e
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v3}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1045
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaSet;->editPhotoShare(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1050
    :sswitch_f
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v5, Lcom/android/gallery3d/settings/GallerySettings;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 921
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10022b -> :sswitch_1
        0x7f10022c -> :sswitch_9
        0x7f10022d -> :sswitch_8
        0x7f10022e -> :sswitch_c
        0x7f10022f -> :sswitch_d
        0x7f100230 -> :sswitch_7
        0x7f100231 -> :sswitch_a
        0x7f100232 -> :sswitch_b
        0x7f100234 -> :sswitch_d
        0x7f100235 -> :sswitch_e
        0x7f100236 -> :sswitch_5
        0x7f100237 -> :sswitch_3
        0x7f100238 -> :sswitch_4
        0x7f100239 -> :sswitch_f
        0x7f10027a -> :sswitch_6
        0x7f10027c -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 489
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapSlotIndex:I

    .line 490
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromDmsSetPage:Z

    if-eqz v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 493
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 496
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    if-eqz v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShareFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/ShareManager;->addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z

    .line 500
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 501
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/ShareManager;->removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V

    .line 506
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v1, stateData:Landroid/os/Bundle;
    const-string v2, "cluster-type"

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentClusterType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/gallery3d/app/LongTapManager;->show(Lcom/android/gallery3d/data/MediaItem;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 682
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 685
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ShareManager;->hideIfShowing()V

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->pause()V

    .line 695
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 696
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 697
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDeleteDialog:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->dismiss()V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->onPause()V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onPause()V

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 713
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareIntentTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShareIntentTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 719
    :cond_4
    return-void
.end method

.method protected onResume(Landroid/os/Bundle;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 621
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 622
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 624
    if-eqz p1, :cond_0

    const-string v2, "PASS_RETURN_INDEX_HINT"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    const-string v2, "return-index-hint"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 626
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setFocusIndex(I)V

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string v5, "resume_animation"

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 631
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/SlotView;->setSlotFilter(I)V

    .line 634
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(ILcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 635
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 640
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_4

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_5

    move v5, v3

    :goto_1
    or-int v1, v2, v5

    .line 642
    .local v1, enableHomeButton:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 644
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 645
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 651
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 652
    iput-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    .line 653
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->resume()V

    .line 655
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 656
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 658
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_2

    .line 659
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 660
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 662
    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraAndWantQuitOnPause:Z

    .line 664
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 667
    const-string v2, "photoshare"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 669
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 671
    :cond_3
    return-void

    .end local v0           #actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    .end local v1           #enableHomeButton:Z
    :cond_4
    move v2, v4

    .line 640
    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_1
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    .line 1216
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->canOperate(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->showToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onSelectionLimitExceed()V
    .locals 4

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 1231
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLimitExceedTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mLimitExceedMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mLimitExceedConifrm:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->showLimitExceedDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1111
    packed-switch p1, :pswitch_data_0

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1113
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 1114
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ToolbarView;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 1119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-eqz v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0d042e

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1127
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->disableClickAnimation()V

    .line 1128
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 1121
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1124
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1132
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 1133
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->setVisibility(I)V

    .line 1135
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mReload:Z

    if-eqz v0, :cond_4

    .line 1136
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUM:Landroid/net/Uri;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    .line 1138
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideToast()V

    .line 1139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;

    .line 1142
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v0, :cond_5

    .line 1143
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->enableClickAnimation()V

    .line 1147
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->isExcuting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1148
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPasteExecutor:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->onPause()V

    .line 1150
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 1151
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAddPictureToPhotoShare:Z

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1157
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->startCheckAllSelectedItem()V

    .line 1158
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    .line 1159
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_0

    .line 1164
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto/16 :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1060
    packed-switch p1, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1063
    :pswitch_1
    if-eqz p3, :cond_0

    .line 1064
    const-string v2, "photo-index"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1065
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 1069
    :pswitch_2
    if-eqz p3, :cond_0

    .line 1070
    const-string v2, "return-index-hint"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1071
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 1075
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 1079
    :pswitch_4
    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v2}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 1081
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 1082
    .local v1, orgPhotoPath:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mCameraPicture:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1083
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    .end local v1           #orgPhotoPath:[Ljava/lang/String;
    :pswitch_5
    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v2}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 1090
    const-string v2, "photoshare-addpictures-arraylist"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1091
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1093
    .restart local v1       #orgPhotoPath:[Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1099
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #orgPhotoPath:[Ljava/lang/String;
    :pswitch_6
    if-ne p2, v2, :cond_0

    .line 1100
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onPhotoShareItemClicked()V

    goto/16 :goto_0

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 1239
    const-string v0, "AlbumPage"

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

    .line 1241
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$10;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumPage$10;-><init>(Lcom/android/gallery3d/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1258
    return-void
.end method

.method public startCheckAllSelectedItem()V
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$8;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$9;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$9;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    .line 1195
    return-void
.end method
