.class public Lcom/android/gallery3d/app/LongTapManager;
.super Ljava/lang/Object;
.source "LongTapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/LongTapManager$Operation;,
        Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;
    }
.end annotation


# static fields
.field private static final AlbumLongTapItems:[I

.field private static final AlbumSetDefalutItems:[I

.field private static final AlbumSetPhotoShareMyPhotoItems:[I

.field private static final AlbumSetPhotoShareMyReceiveItems:[I

.field private static final AlbumSetPhotoShareMyShareItems:[I


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mItemIds:[I

.field private mListener:Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mMediaPath:Lcom/android/gallery3d/data/Path;

.field private mSlotIndex:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetDefalutItems:[I

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumLongTapItems:[I

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d0279

    aput v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyPhotoItems:[I

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyShareItems:[I

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyReceiveItems:[I

    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x6dt 0x2t 0xdt 0x7ft
        0x69t 0x2t 0xdt 0x7ft
        0x7at 0x2t 0xdt 0x7ft
        0x7ft 0x2t 0xdt 0x7ft
        0x79t 0x2t 0xdt 0x7ft
    .end array-data

    .line 40
    :array_1
    .array-data 0x4
        0x6dt 0x2t 0xdt 0x7ft
        0xf8t 0x3t 0xdt 0x7ft
        0x69t 0x2t 0xdt 0x7ft
        0xdat 0x3t 0xdt 0x7ft
        0xdbt 0x3t 0xdt 0x7ft
        0x94t 0x2t 0xdt 0x7ft
        0x91t 0x2t 0xdt 0x7ft
        0x92t 0x2t 0xdt 0x7ft
        0x79t 0x4t 0xdt 0x7ft
        0x79t 0x2t 0xdt 0x7ft
    .end array-data

    .line 43
    :array_2
    .array-data 0x4
        0x2et 0x4t 0xdt 0x7ft
        0x45t 0x4t 0xdt 0x7ft
        0x43t 0x4t 0xdt 0x7ft
        0x79t 0x2t 0xdt 0x7ft
    .end array-data

    .line 45
    :array_3
    .array-data 0x4
        0x2ct 0x4t 0xdt 0x7ft
        0x46t 0x4t 0xdt 0x7ft
        0x79t 0x2t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mListener:Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/LongTapManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/LongTapManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mSlotIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mMediaPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager;->doAfterItemClicked(ILcom/android/gallery3d/data/Path;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/LongTapManager;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/LongTapManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/LongTapManager;Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/LongTapManager;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager;->execute(ILcom/android/gallery3d/data/Path;)V

    return-void
.end method

.method private createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 198
    if-le p3, v2, :cond_0

    .line 199
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 201
    :cond_0
    return-object v0
.end method

.method private doAfterItemClicked(ILcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "action"
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    .line 122
    sparse-switch p1, :sswitch_data_0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager;->execute(ILcom/android/gallery3d/data/Path;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 124
    :sswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0d0443

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0d0444

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    move-result-object v1

    .line 127
    .local v1, cancelMyShareDialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    new-instance v4, Lcom/android/gallery3d/app/LongTapManager$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager$2;-><init>(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V

    invoke-virtual {v1, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setOnDialogButtonClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;)V

    .line 136
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v1           #cancelMyShareDialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    :sswitch_1
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0d0446

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0d0447

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    move-result-object v0

    .line 142
    .local v0, cancelMyReceiveDialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    new-instance v4, Lcom/android/gallery3d/app/LongTapManager$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager$3;-><init>(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V

    invoke-virtual {v0, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setOnDialogButtonClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;)V

    .line 151
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0           #cancelMyReceiveDialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    :sswitch_2
    new-instance v2, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;

    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v4, v5}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;-><init>(Landroid/content/Context;I)V

    .line 155
    .local v2, deleteAction:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;
    new-instance v4, Lcom/android/gallery3d/app/LongTapManager$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager$4;-><init>(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;->show()V

    goto :goto_0

    .line 171
    .end local v2           #deleteAction:Lcom/android/gallery3d/ui/ActionDeleteAndConfirm;
    :sswitch_3
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v4, p1, v5}, Lcom/android/gallery3d/app/LongTapManager;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;

    .line 172
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager;->execute(ILcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 177
    :sswitch_4
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v3

    .line 178
    .local v3, state:Lcom/android/gallery3d/app/ActivityState;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/gallery3d/app/AlbumSetPage;

    if-eqz v4, :cond_0

    .line 179
    check-cast v3, Lcom/android/gallery3d/app/AlbumSetPage;

    .end local v3           #state:Lcom/android/gallery3d/app/ActivityState;
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mMediaPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->photoShareAddPicture(Lcom/android/gallery3d/data/Path;)V

    goto/16 :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0269 -> :sswitch_2
        0x7f0d03f7 -> :sswitch_3
        0x7f0d042e -> :sswitch_4
        0x7f0d0443 -> :sswitch_0
        0x7f0d0446 -> :sswitch_1
    .end sparse-switch
.end method

.method private execute(ILcom/android/gallery3d/data/Path;)V
    .locals 2
    .parameter "action"
    .parameter "path"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/LongTapManager$Operation;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/app/LongTapManager$Operation;-><init>(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    .line 190
    return-void
.end method

.method private loadAlbumItems(ILandroid/os/Bundle;)[I
    .locals 12
    .parameter "mediaType"
    .parameter "stateData"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 206
    sget-object v2, Lcom/android/gallery3d/app/LongTapManager;->AlbumLongTapItems:[I

    .line 207
    .local v2, items:[I
    iget-object v9, p0, Lcom/android/gallery3d/app/LongTapManager;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v6

    .line 209
    .local v6, supportedOperations:I
    if-eqz p2, :cond_0

    .line 210
    const-string v9, "cluster-type"

    invoke-virtual {p2, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, clusterType:I
    if-eq v0, v11, :cond_0

    .line 212
    const v9, -0x1000001

    and-int/2addr v6, v9

    .line 213
    const v9, -0x800001

    and-int/2addr v6, v9

    .line 217
    .end local v0           #clusterType:I
    :cond_0
    array-length v3, v2

    .line 218
    .local v3, len:I
    const/4 v5, 0x0

    .line 219
    .local v5, skip:I
    new-array v7, v3, [I

    .line 220
    .local v7, tem:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 221
    aget v8, v2, v1

    .line 222
    .local v8, value:I
    invoke-static {v8, v6}, Lcom/android/gallery3d/util/GalleryUtils;->checkSupportedAction(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 223
    add-int/lit8 v5, v5, 0x1

    .line 220
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    sub-int v9, v1, v5

    aput v8, v7, v9

    goto :goto_1

    .line 228
    .end local v8           #value:I
    :cond_2
    sub-int v9, v3, v5

    new-array v4, v9, [I

    .line 229
    .local v4, result:[I
    array-length v9, v4

    invoke-static {v7, v10, v4, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-object v4
.end method

.method private loadAlbumSetItems(I)[I
    .locals 1
    .parameter "photoShareType"

    .prologue
    .line 269
    packed-switch p1, :pswitch_data_0

    .line 277
    sget-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyPhotoItems:[I

    :goto_0
    return-object v0

    .line 271
    :pswitch_0
    sget-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyPhotoItems:[I

    goto :goto_0

    .line 273
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyShareItems:[I

    goto :goto_0

    .line 275
    :pswitch_2
    sget-object v0, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetPhotoShareMyReceiveItems:[I

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadAlbumSetItems(Lcom/android/gallery3d/data/MediaSet;I)[I
    .locals 13
    .parameter "set"
    .parameter "actionType"

    .prologue
    const v12, 0x7f0d027f

    const v11, 0x7f0d027a

    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 234
    if-ne p2, v0, :cond_1

    .line 235
    .local v0, byAlbum:Z
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isPrivacyMode()Z

    move-result v2

    .line 237
    .local v2, isPrivacyMode:Z
    sget-object v3, Lcom/android/gallery3d/app/LongTapManager;->AlbumSetDefalutItems:[I

    .line 238
    .local v3, items:[I
    array-length v4, v3

    .line 239
    .local v4, len:I
    const/4 v6, 0x0

    .line 240
    .local v6, skip:I
    new-array v7, v4, [I

    .line 241
    .local v7, tem:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_7

    .line 242
    aget v8, v3, v1

    .line 243
    .local v8, value:I
    if-eqz v0, :cond_5

    .line 244
    if-ne v8, v11, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_0

    const v8, 0x7f0d027b

    .line 260
    :cond_0
    :goto_2
    sub-int v10, v1, v6

    aput v8, v7, v10

    .line 241
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #byAlbum:Z
    .end local v1           #i:I
    .end local v2           #isPrivacyMode:Z
    .end local v3           #items:[I
    .end local v4           #len:I
    .end local v6           #skip:I
    .end local v7           #tem:[I
    .end local v8           #value:I
    :cond_1
    move v0, v9

    .line 234
    goto :goto_0

    .line 246
    .restart local v0       #byAlbum:Z
    .restart local v1       #i:I
    .restart local v2       #isPrivacyMode:Z
    .restart local v3       #items:[I
    .restart local v4       #len:I
    .restart local v6       #skip:I
    .restart local v7       #tem:[I
    .restart local v8       #value:I
    :cond_2
    if-ne v8, v12, :cond_0

    .line 247
    if-eqz v2, :cond_4

    .line 248
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->isPrivate()Z

    move-result v10

    if-eqz v10, :cond_3

    const v8, 0x7f0d0280

    :cond_3
    goto :goto_2

    .line 250
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 251
    goto :goto_3

    .line 255
    :cond_5
    if-eq v8, v11, :cond_6

    if-ne v8, v12, :cond_0

    .line 256
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 257
    goto :goto_3

    .line 262
    .end local v8           #value:I
    :cond_7
    sub-int v10, v4, v6

    new-array v5, v10, [I

    .line 263
    .local v5, result:[I
    array-length v10, v5

    invoke-static {v7, v9, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v5
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 119
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager;->mListener:Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;

    .line 375
    return-void
.end method

.method public show(Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 1
    .parameter "item"
    .parameter "slotIndex"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/app/LongTapManager;->show(Lcom/android/gallery3d/data/MediaItem;ILandroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public show(Lcom/android/gallery3d/data/MediaItem;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "item"
    .parameter "slotIndex"
    .parameter "stateData"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 88
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/app/LongTapManager;->loadAlbumItems(ILandroid/os/Bundle;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I

    .line 89
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mTitle:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/LongTapManager;->mMediaPath:Lcom/android/gallery3d/data/Path;

    .line 91
    iput p2, p0, Lcom/android/gallery3d/app/LongTapManager;->mSlotIndex:I

    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/app/LongTapManager;->showDialog()V

    .line 93
    return-void
.end method

.method public show(Lcom/android/gallery3d/data/MediaSet;II)V
    .locals 2
    .parameter "set"
    .parameter "slotIndex"
    .parameter "actionType"

    .prologue
    .line 69
    const/16 v1, 0x80

    if-ne p3, v1, :cond_0

    move-object v1, p1

    .line 70
    check-cast v1, Lcom/android/gallery3d/data/PhotoShareAlbum;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/PhotoShareAlbum;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v0

    .line 71
    .local v0, PhotoShareAlbumType:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/LongTapManager;->loadAlbumSetItems(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I

    .line 75
    .end local v0           #PhotoShareAlbumType:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/LongTapManager;->mTitle:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/LongTapManager;->mMediaPath:Lcom/android/gallery3d/data/Path;

    .line 77
    iput p2, p0, Lcom/android/gallery3d/app/LongTapManager;->mSlotIndex:I

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/app/LongTapManager;->showDialog()V

    .line 79
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/app/LongTapManager;->loadAlbumSetItems(Lcom/android/gallery3d/data/MediaSet;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I

    goto :goto_0
.end method

.method public showDialog()V
    .locals 6

    .prologue
    .line 96
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I

    array-length v2, v4

    .line 97
    .local v2, length:I
    new-array v1, v2, [Ljava/lang/String;

    .line 98
    .local v1, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/gallery3d/app/LongTapManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/gallery3d/app/LongTapManager$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/LongTapManager$1;-><init>(Lcom/android/gallery3d/app/LongTapManager;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 113
    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 114
    return-void
.end method
