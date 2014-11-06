.class public Lcom/android/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;,
        Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;,
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryActionBar"

.field private static final sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

.field private mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 104
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;>;"
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0d02ed

    const v5, 0x7f0d02a0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/4 v5, 0x4

    const v8, 0x7f0d02ef

    const v9, 0x7f0d02b7

    const v10, 0x7f0d029c

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/4 v5, 0x2

    const v8, 0x7f0d02ee

    const v9, 0x7f0d02b6

    const v10, 0x7f0d029d

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x20

    const v8, 0x7f0d02f0

    const v9, 0x7f0d029f

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    sput-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 116
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    .line 198
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 199
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 200
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 203
    return-void
.end method

.method static synthetic access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private createDialogData()V
    .locals 7

    .prologue
    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v4, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 208
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 209
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    if-eqz v5, :cond_0

    .line 210
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->dialogTitle:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    iget v6, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    .line 215
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public static getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 189
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 190
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_0

    .line 191
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :goto_1
    return-object v4

    .line 189
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setHomeButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 384
    :cond_0
    return-void
.end method

.method public createActionBarMenu(ILandroid/view/Menu;)V
    .locals 1
    .parameter "menuRes"
    .parameter "menu"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 432
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    .line 450
    return-void
.end method

.method public disableClusterMenu(Z)V
    .locals 2
    .parameter "hideMenu"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 2
    .parameter "action"
    .parameter "runner"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->setSelectedAction(I)Z

    .line 251
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 253
    :cond_0
    return-void
.end method

.method public getClusterTypeAction()I
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    iget v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 380
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 406
    iget v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 421
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 418
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 388
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(I)V
    .locals 2
    .parameter "ResID"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 5
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 223
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 224
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 225
    iput-boolean p2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 229
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 223
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 5
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 232
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 233
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 234
    iput-boolean p2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    .line 238
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 232
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .parameter "homeAsUp"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeID(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3
    .parameter "displayHomeAsUp"
    .parameter "showTitle"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    .line 331
    .local v0, options:I
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 332
    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 334
    :cond_2
    if-eqz p1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0201ad

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(I)V

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 342
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setSelectedAction(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v4, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v3

    .line 393
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v4, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 394
    sget-object v4, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v4, v0

    .line 395
    .local v1, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_2

    .line 396
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 397
    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 398
    const/4 v3, 0x1

    goto :goto_0

    .line 393
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setShareIntents(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .parameter "sharePanoramaIntent"
    .parameter "shareIntent"

    .prologue
    .line 465
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 376
    :cond_0
    return-void
.end method

.method public showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 4
    .parameter "clusterRunner"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryActionBar;->createDialogData()V

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 307
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d02f2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/gallery3d/app/GalleryActionBar$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/gallery3d/app/GalleryActionBar$1;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 321
    return-void
.end method
