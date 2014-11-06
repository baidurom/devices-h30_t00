.class public Lcom/android/gallery3d/ui/PasteExecutor;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MAX_NAME_SIZE:I = 0x55

.field private static final TAG:Ljava/lang/String; = "PasteExecutor"


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCreateAlbumButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCreateAlbumDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsExcuting:Z

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mPasteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteType:I

.field private mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectTargetDialog:Landroid/app/AlertDialog;

.field private mSetNameTextView:Landroid/widget/EditText;

.field private mSourceSetPath:Lcom/android/gallery3d/data/Path;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUseCustomList:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/data/Path;I)V
    .locals 4
    .parameter "activity"
    .parameter "executor"
    .parameter "listener"
    .parameter "sourceSetPath"
    .parameter "pasteType"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mHandler:Landroid/os/Handler;

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mPasteList:Ljava/util/ArrayList;

    .line 57
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mUseCustomList:Z

    .line 60
    new-instance v2, Lcom/android/gallery3d/ui/PasteExecutor$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PasteExecutor$1;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    new-instance v2, Lcom/android/gallery3d/ui/PasteExecutor$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PasteExecutor$2;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    new-instance v2, Lcom/android/gallery3d/ui/PasteExecutor$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PasteExecutor$3;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 103
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 113
    iput-object p2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 114
    iput-object p3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 115
    iput-object p4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSourceSetPath:Lcom/android/gallery3d/data/Path;

    .line 116
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSetNameTextView:Landroid/widget/EditText;

    .line 117
    iput p5, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mPasteType:I

    .line 119
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 120
    .local v1, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, basePath:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PasteExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->createNewAlbum()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PasteExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->pasteCancelled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->sortDestinationList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/PasteExecutor;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->onCreateAlbumConfirm(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/DialogInterface;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ui/PasteExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->showDestinationList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PasteExecutor;->onPasteDestinationSelect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PasteExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PasteExecutor;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->getDestinationList(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private createNewAlbum()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "PasteExecutor"

    const-string v3, "createNewAlbum The dialog is showing, do not create any more"

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0d026c

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, cancelString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0d03dc

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, pasteString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSetNameTextView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/android/gallery3d/ui/PasteExecutor;->getDefualtAlbumName(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSetNameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x55

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 303
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSetNameTextView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/gallery3d/ui/PasteExecutor$7;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PasteExecutor$7;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d03dd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSetNameTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    .line 323
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 324
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 325
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 326
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private static getAlbumParentPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 387
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 388
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 389
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 390
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isStorageMounted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pictures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 395
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v6

    .line 389
    .restart local v4       #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pictures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static getDefualtAlbumName(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 371
    const v4, 0x7f0d03dd

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, defaultName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->getAlbumParentPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v0

    .line 383
    :cond_0
    return-object v2

    .line 376
    :cond_1
    move-object v2, v0

    .line 378
    .local v2, fileName:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_0

    .line 379
    const-string v4, "%s %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 380
    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->getAlbumParentPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getDestinationList(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 6
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 213
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    const-string v4, "PasteExecutor"

    const-string v5, "Get Destination list canceled"

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    .line 243
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    :cond_0
    return-object v2

    .line 220
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    :cond_1
    const-wide/16 v4, 0x14

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v4

    goto :goto_0

    .line 226
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 232
    .local v1, item:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSourceSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, mediaSetFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private onCreateAlbumConfirm(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSetNameTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->isAlbumNameValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    invoke-static {p1, v5}, Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z

    .line 335
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0d0450

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 352
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PasteExecutor;->getAlbumParentPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v0, albumFileDir:Ljava/io/File;
    const-string v2, "PasteExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-static {p1, v5}, Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z

    .line 343
    iget-object v2, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0d03de

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 350
    :cond_1
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/gallery3d/ui/PasteExecutor;->onPasteDestinationSelect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPasteDestinationSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "destination"
    .parameter "dirName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    .line 199
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v8, data:Landroid/os/Bundle;
    const-string v0, "key-targetpath"

    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "key-targetfilename"

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "key-pastestate"

    iget v1, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mPasteType:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v0, "key-customprogress"

    invoke-virtual {v8, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mUseCustomList:Z

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mPasteList:Ljava/util/ArrayList;

    .line 205
    .local v7, pasteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f100233

    const v2, 0x7f0d03dc

    iget-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    sget-object v6, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->PASTE_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZLcom/android/gallery3d/ui/MenuExecutorFactory$Style;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 207
    return-void

    .line 204
    .end local v7           #pasteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getDefaultProcessList()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0
.end method

.method private pasteCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 182
    iput-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 188
    iput-object v3, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCreateAlbumDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    .line 192
    return-void
.end method

.method private static setDialogDismissable(Landroid/content/DialogInterface;Z)Z
    .locals 5
    .parameter "dialog"
    .parameter "dismissalbe"

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, successful:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 360
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    const/4 v2, 0x1

    .line 367
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PasteExecutor"

    const-string v4, "set dialog dismissable fail"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showDestinationList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    const/4 v11, 0x1

    .line 259
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    const-string v7, "PasteExecutor"

    const-string v8, "showDestinationList  The dialog is showing, do not create any more"

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 266
    .local v3, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 267
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSet;

    .line 268
    .local v5, set:Lcom/android/gallery3d/data/MediaSet;
    const-string v7, "%s (%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    .end local v5           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    new-instance v2, Lcom/android/gallery3d/ui/PasteExecutor$6;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor$6;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/util/ArrayList;)V

    .line 278
    .local v2, itemClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mPasteType:I

    if-ne v7, v11, :cond_2

    const v6, 0x7f0d03e1

    .line 279
    .local v6, titleRes:I
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d026c

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, cancelString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d03dd

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, newAlbumString:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f04002d

    const v11, 0x7f1000fa

    invoke-direct {v8, v9, v10, v11, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    .line 285
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    iget-object v9, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v0, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 286
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v4, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 287
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 289
    iget-object v7, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 278
    .end local v0           #cancelString:Ljava/lang/String;
    .end local v4           #newAlbumString:Ljava/lang/String;
    .end local v6           #titleRes:I
    :cond_2
    const v6, 0x7f0d03e2

    goto :goto_2
.end method

.method private sortDestinationList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/PasteExecutor$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/PasteExecutor$5;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public isExcuting()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    return v0
.end method

.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->isExcuting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 159
    :cond_1
    const-string v0, "PasteExecutor"

    const-string v1, "future is empty"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->pasteCancelled()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/ui/PasteExecutor$4;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor$4;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;Lcom/android/gallery3d/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPasteOperationConfirm()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;Lcom/android/gallery3d/ui/PasteExecutor$1;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 150
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->isExcuting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mIsExcuting:Z

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PasteExecutor;->pasteCancelled()V

    goto :goto_0
.end method

.method public setCustomPasteList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mUseCustomList:Z

    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor;->mPasteList:Ljava/util/ArrayList;

    goto :goto_0
.end method
