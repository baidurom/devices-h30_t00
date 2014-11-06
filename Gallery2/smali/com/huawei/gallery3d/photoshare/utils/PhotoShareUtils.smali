.class public Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;
.super Ljava/lang/Object;
.source "PhotoShareUtils.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.huawei.android.hicloud.provider"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final IS_PLATFORM_SUPPORT_PHOTOSHARE_FEATURE:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static mClusterType:I

.field private static mConfiguration:I

.field private static mIsNeedAddPhoto:Z

.field private static mIsReceiverAccountValid:Z

.field private static mIsSupportPhotoShareFeature:Z

.field private static mNeedCompare:Z

.field private static mNeedLoadPhotoShareAblumSet:Z

.field private static mShareList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    const-class v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    .line 87
    sput-boolean v2, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mNeedLoadPhotoShareAblumSet:Z

    .line 89
    sput-boolean v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsSupportPhotoShareFeature:Z

    .line 91
    sput-boolean v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsReceiverAccountValid:Z

    .line 92
    sput-boolean v2, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsNeedAddPhoto:Z

    .line 93
    sput v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mConfiguration:I

    .line 94
    sput v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mClusterType:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    .line 97
    const-string v0, "content://com.huawei.android.hicloud.provider/is_support_cloudphoto"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    sput-boolean v2, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mNeedCompare:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsSupportPhotoShareFeature:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addPhotoToShared(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "shareFolderPath"

    .prologue
    .line 591
    new-instance v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;->start()V

    .line 603
    return-void
.end method

.method public static cacheShareItem(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 574
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->clearShareItemList()V

    .line 575
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    return-void
.end method

.method public static cacheShareItemList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->clearShareItemList()V

    .line 568
    if-eqz p0, :cond_0

    .line 569
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 571
    :cond_0
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 622
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 624
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 625
    return-void
.end method

.method public static clearShareItemList()V
    .locals 1

    .prologue
    .line 585
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 588
    :cond_0
    return-void
.end method

.method public static createCameraFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 336
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, cameraDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 339
    .local v3, result:Z
    sget-object v4, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdir result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 341
    .local v2, localDate:Ljava/util/Date;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    .local v1, cameraFile:Ljava/io/File;
    return-object v1
.end method

.method public static createChooseAddPictureDialog(Landroid/app/Activity;Ljava/io/File;II)V
    .locals 2
    .parameter "mActivity"
    .parameter "camearPicture"
    .parameter "requestMultipick"
    .parameter "requestCamera"

    .prologue
    .line 346
    new-instance v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;-><init>(Landroid/app/Activity;)V

    .line 347
    .local v0, alertDialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;
    new-instance v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;-><init>(Landroid/app/Activity;ILjava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->setListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;)V

    .line 378
    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->showDialog()V

    .line 379
    return-void
.end method

.method public static executeHWAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "operation"

    .prologue
    .line 510
    new-instance v0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;-><init>(Landroid/content/Context;)V

    .line 511
    .local v0, hwAnimationReflection:Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;
    invoke-virtual {v0, p1}, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->overrideTransition(I)V

    .line 512
    return-void
.end method

.method public static formatPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 676
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "{"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClustertype()I
    .locals 1

    .prologue
    .line 478
    sget v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mClusterType:I

    return v0
.end method

.method public static getNeedCompare()Z
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mNeedCompare:Z

    return v0
.end method

.method public static getNotifyId(Ljava/lang/String;)I
    .locals 7
    .parameter "sharePath"

    .prologue
    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    const/4 v4, -0x1

    .line 248
    :cond_0
    return v4

    .line 243
    :cond_1
    const/4 v4, 0x0

    .line 244
    .local v4, id:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 245
    .local v1, array:[C
    move-object v0, v1

    .local v0, arr$:[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-char v2, v0, v3

    .line 246
    .local v2, c:C
    add-int/2addr v4, v2

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getOrientation()I
    .locals 1

    .prologue
    .line 519
    sget v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mConfiguration:I

    return v0
.end method

.method public static getShareFolderFromPath(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    .line 664
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 666
    .local v2, mShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 667
    .local v0, folder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, segments:[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    .end local v0           #folder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .end local v3           #segments:[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShareItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    sget-object v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static hideSoftInput(Landroid/widget/EditText;)V
    .locals 4
    .parameter "editText"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 234
    .local v0, inputMethod:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 235
    .local v1, windowToken:Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 236
    return-void
.end method

.method public static initDirInfo(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 196
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v3

    .line 197
    .local v3, info:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    if-nez v3, :cond_0

    .line 198
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    .end local v3           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;-><init>()V

    .line 201
    .restart local v3       #info:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v5

    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isStorageMounted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".gallery"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setBaseDir(Ljava/lang/String;)V

    .line 209
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setMaxStorage(I)V

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 212
    .local v1, display:Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;-><init>()V

    .line 213
    .local v0, bigSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setWidth(I)V

    .line 214
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setHeight(I)V

    .line 215
    invoke-virtual {v3, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setBig_size(Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;)V

    .line 216
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;-><init>()V

    .line 217
    .local v6, thumbSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setWidth(I)V

    .line 218
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setHeight(I)V

    .line 219
    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setAbbr_size(Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;)V

    .line 220
    invoke-static {p0, v3}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->setDir(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;)I

    .line 221
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->getInstance()Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->getListeners()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .local v4, mylistener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnFolderChange()V

    goto :goto_1

    .line 203
    .end local v0           #bigSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    .end local v1           #display:Landroid/util/DisplayMetrics;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #mylistener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    .end local v6           #thumbSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".gallery"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setBaseDir(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Not Found Storage:No elumated sdcard and unmounted removal sdcard"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    .restart local v0       #bigSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    .restart local v1       #display:Landroid/util/DisplayMetrics;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #thumbSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    :cond_3
    return-void
.end method

.method public static initPhotoShareFeature(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 444
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShareFeature(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsSupportPhotoShareFeature:Z

    .line 445
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    new-instance v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->start()V

    .line 133
    return-void
.end method

.method public static isCameraActivity(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, cmpNameTemp:Ljava/lang/String;
    :try_start_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 651
    .local v2, manager:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 652
    .local v3, runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    .line 653
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 659
    :cond_0
    const-string v4, "com.android.hwcamera"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return v4

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    const-string v6, "Exception in isCameraActivity"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 657
    goto :goto_0
.end method

.method public static isCloudPhotoNotReady(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 276
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isHiCloudLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoSwitchOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudPhotoPhotoSwitchOpen(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 268
    const-string v0, "isOpenPhoto"

    invoke-static {p0, v0}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCloudPhotoShareSwitchOpen(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 272
    const-string v0, "isOpenShare"

    invoke-static {p0, v0}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCloudPhotoSwitchOpen(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoPhotoSwitchOpen(Landroid/content/Context;)Z

    move-result v0

    .line 260
    .local v0, isSwitchPhotoOn:Z
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoShareSwitchOpen(Landroid/content/Context;)Z

    move-result v1

    .line 261
    .local v1, isSwitchShareOn:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 262
    const/4 v2, 0x0

    .line 264
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isFileSizeZero(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, fileSize:I
    const/4 v3, 0x0

    .line 301
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 303
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 304
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v2

    .line 311
    if-nez v4, :cond_2

    move-object v3, v4

    .line 321
    .end local v1           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v5

    .line 311
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    if-eqz v3, :cond_0

    .line 313
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v6

    goto :goto_0

    .line 313
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    .line 318
    .end local v1           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-lez v2, :cond_0

    .line 319
    const/4 v5, 0x1

    goto :goto_0

    .line 314
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v3, v4

    .line 317
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 308
    .end local v1           #file:Ljava/io/File;
    :catch_2
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v6, "PhotoSharreUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error In isFileSizeZero "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    if-eqz v3, :cond_0

    .line 313
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 314
    :catch_3
    move-exception v6

    goto :goto_1

    .line 311
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_0

    .line 313
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 316
    :goto_4
    throw v6

    .line 314
    :catch_4
    move-exception v5

    goto :goto_4

    .line 311
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 308
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static isGallerySupportPhotoShare()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public static isHiCloudAppExist(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 392
    const-string v1, "com.huawei.android.ds"

    .line 394
    .local v1, hiCloudPackageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 397
    sget-object v2, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    const-string v3, "HiCloud is exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    const-string v3, "HiCloud is not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 401
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHiCloudLogin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 252
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->getLogOnInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHiCloudSupportPhotoShareFeature(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 407
    const/4 v6, 0x0

    .line 408
    .local v6, cursor:Landroid/database/Cursor;
    const-string v10, "featureName=?"

    .line 409
    .local v10, selection:Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "IsPhotoshareOpen"

    aput-object v1, v4, v12

    .line 410
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "featureName=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 413
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 415
    .local v8, index:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, isPhotoShareOpen:Ljava/lang/String;
    sget-object v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoShare services Open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v1, "true"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v11

    .line 428
    .end local v8           #index:I
    .end local v9           #isPhotoShareOpen:Ljava/lang/String;
    :goto_0
    return v1

    .line 426
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v12

    .line 428
    goto :goto_0

    .line 421
    :catch_0
    move-exception v7

    .line 422
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    const-string v2, "PhotoShare services is not support!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v12

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static isInPhotoShareSourceType(Lcom/android/gallery3d/data/MediaSet;)Z
    .locals 2
    .parameter "set"

    .prologue
    .line 382
    invoke-static {p0}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    .line 383
    .local v0, sourceType:I
    const/16 v1, 0xd

    if-eq v1, v0, :cond_0

    const/16 v1, 0xf

    if-eq v1, v0, :cond_0

    const/16 v1, 0xe

    if-ne v1, v0, :cond_1

    .line 386
    :cond_0
    const/4 v1, 0x1

    .line 388
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNeedAddPhoto()Z
    .locals 1

    .prologue
    .line 606
    sget-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsNeedAddPhoto:Z

    return v0
.end method

.method public static isNeedLoadingPhotoShare()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mNeedLoadPhotoShareAblumSet:Z

    return v0
.end method

.method public static isNeedTriggerHiCloudAutoLogOn(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 471
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->logOnAuto(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhotoShareFolderEmpty(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 532
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isGallerySupportPhotoShare()Z

    move-result v10

    if-nez v10, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v9

    .line 535
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_2

    .line 536
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->setContext(Landroid/content/Context;)V

    .line 539
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, externalPath:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, internalPath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".gallery"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/Photoshare"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, extendPath:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v8, storagePath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isStorageMounted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 545
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_3
    invoke-static {v6}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isStorageMounted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 548
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_4
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 552
    .local v7, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 554
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 555
    .local v4, fileList:[Ljava/io/File;
    if-eqz v4, :cond_5

    array-length v10, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v10, :cond_5

    .line 556
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 560
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileList:[Ljava/io/File;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 561
    .local v0, exp:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static isReceiverAccountValid()Z
    .locals 1

    .prologue
    .line 527
    sget-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsReceiverAccountValid:Z

    return v0
.end method

.method public static isShareNameValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "shareName"

    .prologue
    const/4 v2, 0x0

    .line 492
    const/16 v1, 0x55

    .line 493
    .local v1, maxShareNameLength:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 494
    :cond_0
    const v3, 0x7f0d0451

    invoke-static {v3, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(ILandroid/content/Context;)V

    .line 505
    :goto_0
    return v2

    .line 496
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 497
    const v3, 0x7f0d044f

    invoke-static {v3, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(ILandroid/content/Context;)V

    goto :goto_0

    .line 500
    :cond_2
    const-string v3, "^[^\\\\/:*?<>\"|\\[\\]\\{\\}]+$"

    invoke-static {v3, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 501
    .local v0, isValid:Z
    if-nez v0, :cond_3

    .line 502
    const v3, 0x7f0d0450

    invoke-static {v3, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(ILandroid/content/Context;)V

    goto :goto_0

    .line 505
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isStorageMounted(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 178
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 184
    .local v0, mMntSvc:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 185
    sget-object v3, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolumeState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, p0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "mounted"

    invoke-interface {v0, p0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 190
    .end local v0           #mMntSvc:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v1

    .line 191
    .local v1, rex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isSupportPhotoShare()Z
    .locals 1

    .prologue
    .line 450
    sget-boolean v0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsSupportPhotoShareFeature:Z

    return v0
.end method

.method public static isSupportPhotoShareFeature(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 433
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isGallerySupportPhotoShare()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isHiCloudSupportPhotoShareFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isHiCloudAppExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jumpToPage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "bundle"

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 292
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 295
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method public static jumpToPage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "bundle"
    .parameter "requestCode"

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 285
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method public static registerPhotoshareReceiver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 628
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SystemReceiver;-><init>()V

    .line 629
    .local v2, systemReceiver:Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 630
    .local v3, systemReceiverFilter:Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    new-instance v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdCardBrocardcastReceiver;

    invoke-direct {v0}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdCardBrocardcastReceiver;-><init>()V

    .line 638
    .local v0, sdCardBrocardcastReceiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    .local v1, sdCardBrocardcastReceiverFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 643
    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 644
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    return-void
.end method

.method public static setAddPhotoStatus(Z)V
    .locals 0
    .parameter "isNeed"

    .prologue
    .line 610
    sput-boolean p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsNeedAddPhoto:Z

    .line 611
    return-void
.end method

.method public static setClusterType(I)V
    .locals 0
    .parameter "clusterType"

    .prologue
    .line 475
    sput p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mClusterType:I

    .line 476
    return-void
.end method

.method public static setComponentEnabledSetting(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 137
    new-instance v0, Landroid/content/ComponentName;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver;

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, AccountLogReceiver:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/SwitchReceiver;

    invoke-direct {v3, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v3, SwitchReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/HiPhotoPushReceiver;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v1, HiPhotoPushReceiver:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-class v5, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;

    invoke-direct {v2, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v2, PhotoSharePushNotifyReceiver:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 148
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v0, p1, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 150
    invoke-virtual {v4, v3, p1, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 152
    invoke-virtual {v4, v1, p1, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 156
    invoke-virtual {v4, v2, p1, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 158
    return-void
.end method

.method public static setNeedCompare(Z)V
    .locals 0
    .parameter "needCompare"

    .prologue
    .line 174
    sput-boolean p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mNeedCompare:Z

    .line 175
    return-void
.end method

.method public static setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 515
    sput p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mConfiguration:I

    .line 516
    return-void
.end method

.method public static setPhotoShareAlbumSet(Z)V
    .locals 0
    .parameter "needLoad"

    .prologue
    .line 166
    sput-boolean p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mNeedLoadPhotoShareAblumSet:Z

    .line 167
    return-void
.end method

.method public static setReceiverAccountStatus(Z)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 523
    sput-boolean p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mIsReceiverAccountValid:Z

    .line 524
    return-void
.end method

.method public static showPhotoShareCompleteToast(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110010

    sget-object v3, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->mShareList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, shareComplete:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 618
    return-void
.end method

.method public static showToast(ILandroid/content/Context;)V
    .locals 2
    .parameter "resId"
    .parameter "context"

    .prologue
    .line 487
    invoke-static {p1}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 488
    .local v0, themeContext:Landroid/view/ContextThemeWrapper;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 489
    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "message"
    .parameter "context"

    .prologue
    .line 482
    invoke-static {p1}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 483
    .local v0, themeContext:Landroid/view/ContextThemeWrapper;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 484
    return-void
.end method

.method public static toggleSoftInput(Landroid/widget/EditText;)V
    .locals 5
    .parameter "editText"

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    .local v0, inputMethod:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 228
    .local v1, windowToken:Landroid/os/IBinder;
    invoke-virtual {v0, v1, v4, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 229
    return-void
.end method

.method public static toggleStatusBarByOrientation(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/16 v3, 0x400

    .line 462
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 463
    .local v0, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 464
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static updatePhotoShareAlbum(Lcom/android/gallery3d/data/PhotoShareAlbum;)V
    .locals 6
    .parameter "album"

    .prologue
    .line 325
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/PhotoShareAlbum;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v0

    .line 328
    .local v0, folder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->isNew()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/data/PhotoShareAlbum;->getPhotoList(Z)Ljava/util/ArrayList;

    .line 331
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->getInstance()Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .local v2, mylistener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v2}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnFolderChange()V

    goto :goto_0

    .line 333
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mylistener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :cond_0
    return-void
.end method
