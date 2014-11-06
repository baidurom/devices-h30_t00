.class public Lcom/android/gallery3d/app/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;,
        Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;,
        Lcom/android/gallery3d/app/ShareManager$IShareItem;,
        Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;,
        Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/content/Context;

.field private mAddOnItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/app/ShareManager$IShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field private mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mGridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridView:Landroid/widget/GridView;

.field private mIntent:Landroid/content/Intent;

.field private mListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

.field private mMultiIntent:[Landroid/content/Intent;

.field private mNeedReloadIntent:Z

.field private mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectIntentType:I

.field private mShareHistoryFileName:Ljava/lang/String;

.field private mShareIntent:Landroid/content/Intent;

.field private mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

.field private mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

.field private mSingleIntentShare:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/ShareManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "share_history.xml"

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareHistoryFileName:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mResolveInfos:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager;->mNeedReloadIntent:Z

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mUIHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Lcom/android/gallery3d/app/ShareManager$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ShareManager$1;-><init>(Lcom/android/gallery3d/app/ShareManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mGridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;-><init>(Lcom/android/gallery3d/app/ShareManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mResolveInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->setResolves(Ljava/util/List;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ShareManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ShareManager;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/ShareManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ShareManager;->shouldCovertVI(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/ShareManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/app/ShareManager;->shouldAddWaterMark()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/ShareManager;ZZLandroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/ShareManager;->handleSingleIntentShareInternal(ZZLandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/ShareManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/ShareManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/ShareManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/ShareManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager;->mSingleIntentShare:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/ShareManager;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/ShareManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ShareManager;->filterShareList(I)V

    return-void
.end method

.method private createDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 411
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mGridView:Landroid/widget/GridView;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mGridClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d026d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    .line 419
    :cond_1
    return-void
.end method

.method private filterShareList(I)V
    .locals 14
    .parameter "filterType"

    .prologue
    const/4 v13, 0x0

    .line 268
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    .line 269
    iget-boolean v10, p0, Lcom/android/gallery3d/app/ShareManager;->mNeedReloadIntent:Z

    if-nez v10, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    const-string v11, "KEY_CONTAIN_VOICEIMAGE"

    invoke-virtual {v10, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 273
    .local v2, isContainVoiceImage:Z
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 275
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v4, newPathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v5, newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    const-string v11, "KEY_PATH_ARRAY"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 279
    .local v8, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 282
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 283
    .local v7, pathChar:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 284
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 285
    .local v3, item:Lcom/android/gallery3d/data/MediaObject;
    invoke-static {v3}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v10

    and-int/2addr v10, p1

    if-eqz v10, :cond_2

    .line 286
    :cond_3
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    .end local v3           #item:Lcom/android/gallery3d/data/MediaObject;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #pathChar:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 292
    .local v9, size:I
    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 293
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v10, v11, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 297
    :goto_2
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    const-string v11, "KEY_CONTAIN_VOICEIMAGE"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    const-string v11, "KEY_PATH_ARRAY"

    invoke-virtual {v10, v11, v4}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 295
    :cond_5
    iget-object v10, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "watermark_item"

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private handleSingleIntentShareInternal(ZZLandroid/content/ComponentName;)V
    .locals 14
    .parameter "shouldTransToVideo"
    .parameter "shouldAddWaterMark"
    .parameter "chosenName"

    .prologue
    .line 303
    new-instance v5, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 305
    .local v5, sendIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 306
    .local v6, isMultiple:Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    const-string v3, "KEY_PATH_ARRAY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 308
    .local v13, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    sget-object v2, Lcom/android/gallery3d/app/ShareManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "The KEY_PATH_ARRAY has not been written, not to add watermark or convert to video."

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ShareManager;->startShareIntent(Landroid/content/ComponentName;)V

    .line 368
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 314
    .local v12, pathChar:Ljava/lang/CharSequence;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 315
    .local v11, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    .end local v11           #path:Lcom/android/gallery3d/data/Path;
    .end local v12           #pathChar:Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Lcom/android/gallery3d/app/ShareManager$2;

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/app/ShareManager$2;-><init>(Lcom/android/gallery3d/app/ShareManager;ZZLandroid/content/Intent;ZLandroid/content/ComponentName;)V

    .line 366
    .local v1, mListener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    invoke-interface {v2}, Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;->getMenuExecutor()Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v8

    .line 367
    .local v8, executor:Lcom/android/gallery3d/ui/MenuExecutor;
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10, v2, v8, v1}, Lcom/android/gallery3d/ui/ShareExecutor;->convertShareItems(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;)V

    goto :goto_0

    .line 366
    .end local v8           #executor:Lcom/android/gallery3d/ui/MenuExecutor;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private refreshResolveInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 151
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/gallery3d/app/ShareManager;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/gallery3d/provider/ActivityChooser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/gallery3d/provider/ActivityChooser;

    move-result-object v1

    .line 153
    .local v1, dataModel:Lcom/android/gallery3d/provider/ActivityChooser;
    iget-boolean v7, p0, Lcom/android/gallery3d/app/ShareManager;->mSingleIntentShare:Z

    if-eqz v7, :cond_3

    .line 154
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/provider/ActivityChooser;->setIntent(Landroid/content/Intent;)V

    .line 167
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/gallery3d/provider/ActivityChooser;->getActivityCount()I

    move-result v4

    .line 168
    .local v4, len:I
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mResolveInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 169
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 170
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mResolveInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/provider/ActivityChooser;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mMultiIntent:[Landroid/content/Intent;

    if-eqz v7, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/android/gallery3d/provider/ActivityChooser;->resetIntents()V

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mMultiIntent:[Landroid/content/Intent;

    .local v0, arr$:[Landroid/content/Intent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v5, :cond_4

    aget-object v6, v0, v3

    .line 160
    .local v6, shareIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Lcom/android/gallery3d/provider/ActivityChooser;->addIntent(Landroid/content/Intent;)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    .end local v6           #shareIntent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v1}, Lcom/android/gallery3d/provider/ActivityChooser;->setShareAllActivitiesMode()V

    .line 163
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mMultiIntent:[Landroid/content/Intent;

    aget-object v7, v7, v9

    const-string v8, "KEY_VI_NOT_WANT_VIDEO_ONLY"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 164
    invoke-virtual {v1}, Lcom/android/gallery3d/provider/ActivityChooser;->deleteAllVideoOnlyActivity()V

    goto :goto_1

    .line 173
    .end local v0           #arr$:[Landroid/content/Intent;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_5
    iget-object v7, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/ShareManager;->createDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private shouldAddWaterMark()Z
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSupportedForSendingIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldCovertVI(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v3, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v2

    .line 374
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 376
    .local v1, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    iget-object v3, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    const-string v4, "KEY_CONTAIN_VOICEIMAGE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 378
    :cond_2
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    invoke-static {v2, v1}, Lcom/android/gallery3d/util/ImageVideoTranser;->isSingleSendIntentSupportTransFer(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z
    .locals 2
    .parameter "shareItem"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 116
    :cond_1
    :goto_0
    return v0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getShareIntentType()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/gallery3d/app/ShareManager;->mSelectIntentType:I

    return v0
.end method

.method public hideIfShowing()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 187
    :cond_0
    return-void
.end method

.method public removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V
    .locals 1
    .parameter "shareItem"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setGalleryActivity(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 136
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager;->mSingleIntentShare:Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;

    .line 130
    return-void
.end method

.method public setIntents([Landroid/content/Intent;)V
    .locals 5
    .parameter "intents"

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 148
    :cond_0
    return-void

    .line 141
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/ShareManager;->mSingleIntentShare:Z

    .line 143
    array-length v1, p1

    .line 144
    .local v1, len:I
    new-array v2, v1, [Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mMultiIntent:[Landroid/content/Intent;

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager;->mMultiIntent:[Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNeedReloadIntent(Z)V
    .locals 0
    .parameter "ifNeed"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ShareManager;->mNeedReloadIntent:Z

    .line 83
    return-void
.end method

.method public setOnItemClickedListener(Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager;->mListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

    .line 199
    return-void
.end method

.method public setOnShareTargetSelectedListener(Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager;->mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

    .line 195
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareHistoryFileName"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager;->mShareHistoryFileName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setSingleVoiceShareListener(Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    .line 94
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/gallery3d/app/ShareManager;->refreshResolveInfo()V

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public startShareIntent(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "chosenName"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/app/ShareManager;->startShareIntent(Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 393
    return-void
.end method

.method public startShareIntent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 2
    .parameter "chosenName"
    .parameter "startIntent"

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 398
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/content/Intent;)Z

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/gallery3d/util/SinaWeiboUtils;->processImageForSinaWeibo(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 403
    return-void
.end method
