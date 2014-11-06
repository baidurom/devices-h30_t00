.class public Lcom/android/gallery3d/ui/PhotoShareShareExecutor;
.super Ljava/lang/Object;
.source "PhotoShareShareExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final EXTRA_NEED_ADD_PHOTO:Ljava/lang/String; = "needAddPhoto"

.field private static final TAG:Ljava/lang/String; = "PhotoShareShareExecutor"


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsExcuting:Z

.field private mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectTargetDialog:Landroid/app/AlertDialog;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$1;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    new-instance v0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$2;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->createNewShare()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->shareCancelled()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->showDestinationList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareDestinationSelect(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->getDestinationList(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->sortDestinationList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private createNewShare()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "needAddPhoto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v2, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    .line 237
    return-void
.end method

.method private getDestinationList(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 5
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, baseSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    if-nez v0, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 177
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :goto_0
    return-object v1

    .line 176
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private onShareDestinationSelect(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 2
    .parameter "shareFolder"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showPhotoShareCompleteToast(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method private shareCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 143
    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

    .line 147
    return-void
.end method

.method private showDestinationList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    const-string v7, "PhotoShareShareExecutor"

    const-string v8, "showDestinationList  The dialog is showing, do not create any more"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 198
    :cond_0
    if-nez p1, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->createNewShare()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 205
    .local v3, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 206
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 207
    .local v5, set:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    const-string v7, "%s (%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getpCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    .end local v5           #set:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_2
    new-instance v2, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Ljava/util/ArrayList;)V

    .line 217
    .local v2, itemClickListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x7f0d0452

    .line 218
    .local v6, titleRes:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d040b

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, cancelString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d0408

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, newAlbumString:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f04002d

    const v11, 0x7f1000fa

    invoke-direct {v8, v9, v10, v11, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    .line 224
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v0, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 225
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v8, v4, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 226
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 228
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private sortDestinationList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$5;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public isExcuting()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

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
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->isExcuting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 114
    :cond_0
    if-nez p1, :cond_1

    .line 116
    const-string v0, "PhotoShareShareExecutor"

    const-string v1, "future is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->shareCancelled()V

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->createNewShare()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$3;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$3;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/android/gallery3d/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->isExcuting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->shareCancelled()V

    goto :goto_0
.end method

.method public onShareOperationConfirm()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/android/gallery3d/ui/PhotoShareShareExecutor$1;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 107
    return-void
.end method
