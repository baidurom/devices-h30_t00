.class public Lcom/android/gallery3d/app/FaceMenuOperation;
.super Ljava/lang/Object;
.source "FaceMenuOperation.java"

# interfaces
.implements Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;,
        Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;,
        Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;,
        Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BSUPPROTALLMENU:Z = false

.field private static final INDEX_CHANGE_NAME:I = 0x3

.field private static final INDEX_CONTACTPHOTO:I = 0x5

.field public static final INDEX_DETAIL:I = 0x6

.field public static final INDEX_EMAIL:I = 0x2

.field public static final INDEX_MMS:I = 0x1

.field private static final INDEX_NAME:I = 0x0

.field public static final INDEX_PHONE:I = 0x8

.field private static final INDEX_REMOVE_NAME:I = 0x4

.field public static final INDEX_SETTING:I = 0x7

.field private static final MAXSIMILARPERSON:I = 0x3

.field private static final SHARETYPE_EMAIL:I = 0x0

.field private static final SHARETYPE_MESSAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FaceMenuOperation"

.field private static sEmailComponents:[Landroid/content/ComponentName;

.field private static sMmsComponents:[Landroid/content/ComponentName;


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContactPhotoDialog:Landroid/app/AlertDialog;

.field private mDialogList:Landroid/app/AlertDialog;

.field private mFaceIdForReqContact:I

.field private mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mOperationDialog:Landroid/app/AlertDialog;

.field private mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

.field private mReqContact:I

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const-string v0, "ro.config.gallery_contactphoto"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/FaceMenuOperation;->BSUPPROTALLMENU:Z

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "jp.emobile.emnet.mail"

    const-string v3, "jp.emobile.emnet.mail.MmsEditActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.message"

    const-string v3, "com.huawei.hotalk.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/FaceMenuOperation;->sMmsComponents:[Landroid/content/ComponentName;

    .line 86
    new-array v0, v6, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.MessageCompose"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/app/FaceMenuOperation;->sEmailComponents:[Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;ILcom/android/gallery3d/app/PhotoPage;)V
    .locals 4
    .parameter "activity"
    .parameter "reqType"
    .parameter "photoPage"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceIdForReqContact:I

    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 150
    iput p2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mReqContact:I

    .line 151
    iput-object p3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

    .line 152
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 153
    .local v0, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    .line 154
    iget-object v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v2, v2, Lcom/android/gallery3d/app/Gallery;

    if-eqz v2, :cond_1

    const v2, 0x7f1000fb

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 155
    .local v1, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 156
    new-instance v2, Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    iget-object v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    .line 158
    :cond_0
    return-void

    .line 154
    .end local v1           #galleryRoot:Landroid/widget/RelativeLayout;
    :cond_1
    const v2, 0x7f100025

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/FaceMenuOperation;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/FaceMenuOperation;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->attachSimilarPerson(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->setContactPhoto(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/FaceMenuOperation;ILcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->setContactPhoto(ILcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/FaceMenuOperation;)Lcom/android/gallery3d/app/PhotoPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/FaceMenuOperation;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->setting(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->faceChangeName(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->faceRemoveName(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->showContactDetail(I)V

    return-void
.end method

.method private attachSimilarPerson(II)V
    .locals 11
    .parameter "similarIndex"
    .parameter "faceId"

    .prologue
    .line 580
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v2

    .line 581
    .local v2, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 583
    .local v0, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 584
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->getSimilarPerson(I)[Ljava/lang/String;

    move-result-object v9

    .line 586
    .local v9, similarname:[Ljava/lang/String;
    const/4 v3, -0x1

    .line 587
    .local v3, i:I
    const/4 v5, -0x1

    .line 588
    .local v5, j:I
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v7, v1, v4

    .line 589
    .local v7, name:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 590
    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 591
    :cond_2
    if-ne v3, p1, :cond_3

    .line 592
    invoke-static {v8, v5, v2}, Lcom/android/gallery3d/data/FaceInfoProcess;->attachSimilarPerson(Landroid/content/ContentResolver;ILcom/android/gallery3d/data/FaceInfo;)V

    goto :goto_0

    .line 588
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private faceChangeName(I)V
    .locals 0
    .parameter "faceId"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->startContactActivity(I)V

    .line 210
    return-void
.end method

.method private faceRemoveName(I)V
    .locals 4
    .parameter "faceId"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v1

    .line 214
    .local v1, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 217
    .local v0, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 218
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v2, v1}, Lcom/android/gallery3d/data/FaceInfoProcess;->dettachContact(Landroid/content/ContentResolver;Lcom/android/gallery3d/data/FaceInfo;)V

    .line 219
    iget-object v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoPage;->onActionBarWanted()V

    goto :goto_0
.end method

.method private findTargetActivity([Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 8
    .parameter "components"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/content/ComponentName;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 372
    .local v1, component:Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 373
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v1

    .line 371
    .restart local v1       #component:Landroid/content/ComponentName;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 378
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getContactIdByFaceId(I)I
    .locals 3
    .parameter "faceId"

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v0

    .line 787
    .local v0, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 789
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/PersonManage;->getContactId(I)I

    move-result v1

    goto :goto_0
.end method

.method private getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;
    .locals 3
    .parameter "faceId"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 189
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v1

    return-object v1
.end method

.method private getFaceInfo(Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/data/FaceInfo;
    .locals 5
    .parameter "item"
    .parameter "faceId"

    .prologue
    const/4 v3, 0x0

    .line 193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFaceInfos()[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v3

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFaceInfos()[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v2

    .line 196
    .local v2, nFaceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    const/4 v0, -0x1

    .line 197
    .local v0, faceIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 198
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v4

    if-ne p2, v4, :cond_3

    .line 199
    move v0, v1

    .line 203
    :cond_2
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 205
    aget-object v3, v2, v0

    goto :goto_0

    .line 197
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getLimitName(ILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 6
    .parameter "personId"
    .parameter "textPaint"

    .prologue
    .line 238
    iget-object v4, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    .line 239
    .local v1, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 240
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 241
    .local v0, LenLimit:I
    invoke-static {v2}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, text:Ljava/lang/String;
    int-to-float v4, v0

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, p2, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    return-object v3
.end method

.method private getLimitString(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "textPaint"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 248
    .local v2, width:I
    iget-object v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 249
    .local v0, leftPadding:I
    mul-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 250
    .local v1, limitLen:I
    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 251
    int-to-float v3, v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    return-object p1
.end method

.method private getSimilarPerson(I)[Ljava/lang/String;
    .locals 8
    .parameter "faceId"

    .prologue
    const/4 v5, 0x0

    .line 552
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v1

    .line 553
    .local v1, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v1, :cond_1

    .line 565
    :cond_0
    return-object v5

    .line 555
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 556
    .local v0, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 557
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/FaceInfo;->getSimilarPersonIds(Landroid/content/ContentResolver;)[I

    move-result-object v4

    .line 558
    .local v4, similarIds:[I
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 561
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/String;

    .line 562
    .local v5, similarpersons:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 563
    invoke-static {v3}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSimilarPersonWithoutNull(I)[Ljava/lang/String;
    .locals 7
    .parameter "faceId"

    .prologue
    const/4 v5, 0x0

    .line 533
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getSimilarPerson(I)[Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, similarpersons:[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 548
    :cond_0
    return-object v5

    .line 536
    :cond_1
    const/4 v3, 0x0

    .line 537
    .local v3, similarNum:I
    const/4 v1, 0x0

    .line 538
    .local v1, similarIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_3

    .line 539
    aget-object v6, v4, v0

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 538
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_3
    if-eqz v3, :cond_0

    .line 544
    new-array v5, v3, [Ljava/lang/String;

    .line 545
    .local v5, similarwithoutNull:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 546
    aget-object v6, v4, v0

    if-eqz v6, :cond_4

    add-int/lit8 v2, v1, 0x1

    .end local v1           #similarIndex:I
    .local v2, similarIndex:I
    aget-object v6, v4, v0

    aput-object v6, v5, v1

    move v1, v2

    .line 545
    .end local v2           #similarIndex:I
    .restart local v1       #similarIndex:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasContactPhoto(I)Z
    .locals 2
    .parameter "faceId"

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getContactIdByFaceId(I)I

    move-result v0

    .line 529
    .local v0, contactId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/ContactManage;->hasContactPhoto(I)Z

    move-result v1

    return v1
.end method

.method private isPhoneAccount(I)Z
    .locals 2
    .parameter "faceId"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getContactIdByFaceId(I)I

    move-result v0

    .line 257
    .local v0, contactId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/ContactManage;->isPhoneAccount(I)Z

    move-result v1

    return v1
.end method

.method private makeCall(I)V
    .locals 10
    .parameter "faceId"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 439
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getContactIdByFaceId(I)I

    move-result v9

    .line 440
    .local v9, contactId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/gallery3d/data/ContactManage;->getPhones(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 441
    .local v2, phoneNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v7, v1, :cond_2

    .line 444
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->makeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    new-instance v0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 448
    .local v0, listener:Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;
    const v4, 0x7f0d0471

    move-object v3, p0

    move-object v5, v2

    move-object v6, v0

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/app/FaceMenuOperation;->showListDialog(ILjava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mDialogList:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private makeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "phoneNum"

    .prologue
    .line 399
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendEmail(I)V
    .locals 12
    .parameter "faceId"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 407
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getContactIdByFaceId(I)I

    move-result v11

    .line 408
    .local v11, contactId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/gallery3d/data/ContactManage;->getEmails(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 409
    .local v2, emailAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v4, v1, :cond_2

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_2
    new-instance v0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 417
    .local v0, listener:Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;
    const v6, 0x7f0d0473

    move-object v5, p0

    move-object v7, v2

    move-object v8, v0

    move v9, v4

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/app/FaceMenuOperation;->showListDialog(ILjava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mDialogList:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 3
    .parameter "emailAdd"

    .prologue
    .line 383
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sharedImageWithTarget(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "FaceMenuOperation"

    const-string v2, "FaceRecognition sendEmail activity not found"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMMS(I)V
    .locals 10
    .parameter "faceId"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 423
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getContactIdByFaceId(I)I

    move-result v9

    .line 424
    .local v9, contactId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/gallery3d/data/ContactManage;->getPhones(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 425
    .local v2, phoneNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v7, v1, :cond_2

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    new-instance v0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;

    const/4 v4, 0x2

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 433
    .local v0, listener:Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;
    const v4, 0x7f0d0472

    move-object v3, p0

    move-object v5, v2

    move-object v6, v0

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/app/FaceMenuOperation;->showListDialog(ILjava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mDialogList:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private sendMMS(Ljava/lang/String;)V
    .locals 3
    .parameter "phoneNum"

    .prologue
    .line 391
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->sharedImageWithTarget(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, notfounde:Landroid/content/ActivityNotFoundException;
    const-string v1, "FaceMenuOperation"

    const-string v2, "FaceRecognition sendMMS activity not found"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setContactPhoto(I)V
    .locals 3
    .parameter "faceId"

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 720
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->setContactPhoto(ILcom/android/gallery3d/data/MediaItem;)V

    .line 721
    return-void
.end method

.method private setContactPhoto(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 12
    .parameter "faceId"
    .parameter "localImage"

    .prologue
    .line 725
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v5

    .line 726
    .local v5, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 727
    .local v3, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 728
    .local v0, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 729
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/PersonManage;->getContactId(I)I

    move-result v1

    .line 730
    .local v1, contactId:I
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 731
    .local v2, contactUri:Landroid/net/Uri;
    invoke-static {v8, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 732
    .local v7, lookupUri:Landroid/net/Uri;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    .line 734
    .local v9, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.ATTACH_DATA"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "image/*"

    invoke-virtual {v10, v9, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 735
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "com.android.contacts"

    const-string v11, "com.android.contacts.activities.AttachPhotoActivity"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    const-string v10, "mimeType"

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v10, "gallary_contact_uri"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 745
    .end local v0           #application:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #contactId:I
    .end local v2           #contactUri:Landroid/net/Uri;
    .end local v3           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v5           #faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #lookupUri:Landroid/net/Uri;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    .end local v9           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v4

    .line 741
    .local v4, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v10, "FaceMenuOperation"

    const-string v11, "setContactPhoto com.android.contacts.activities.AttachPhotoActivity not found"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v10

    goto :goto_0

    .line 742
    :catch_1
    move-exception v4

    .line 743
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "FaceMenuOperation"

    const-string v11, "setContactPhoto Exception"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setting(I)V
    .locals 14
    .parameter "faceId"

    .prologue
    const/4 v4, 0x3

    .line 454
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    .line 455
    .local v10, context:Landroid/content/Context;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v2, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v3, commandIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->isPhoneAccount(I)Z

    move-result v13

    .line 458
    .local v13, supportContactPhoto:Z
    new-array v12, v4, [I

    fill-array-data v12, :array_0

    .line 459
    .local v12, stringIds:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, v12

    if-ge v11, v1, :cond_1

    .line 460
    const v1, 0x7f0d046f

    aget v5, v12, v11

    if-ne v1, v5, :cond_0

    if-nez v13, :cond_0

    .line 459
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 463
    :cond_0
    aget v1, v12, v11

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    aget v1, v12, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    :cond_1
    new-instance v0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 468
    .local v0, listener:Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;
    const v5, 0x7f0d02f3

    const/4 v8, 0x1

    move-object v4, p0

    move-object v6, v2

    move-object v7, v0

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/FaceMenuOperation;->showListDialog(ILjava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mDialogList:Landroid/app/AlertDialog;

    .line 469
    return-void

    .line 458
    nop

    :array_0
    .array-data 0x4
        0x92t 0x3t 0xdt 0x7ft
        0x93t 0x3t 0xdt 0x7ft
        0x6ft 0x4t 0xdt 0x7ft
    .end array-data
.end method

.method private sharedImageWithTarget(ILjava/lang/String;)V
    .locals 13
    .parameter "type"
    .parameter "phoneNumOrEmailAdd"

    .prologue
    .line 326
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 327
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_0

    .line 368
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 330
    .local v4, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v1, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 333
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, intentType:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 336
    .local v7, sendActionComponents:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_3

    .line 337
    sget-object v10, Lcom/android/gallery3d/app/FaceMenuOperation;->sEmailComponents:[Landroid/content/ComponentName;

    invoke-direct {p0, v10, v7}, Lcom/android/gallery3d/app/FaceMenuOperation;->findTargetActivity([Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 338
    .local v0, emailComponent:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 340
    if-eqz p2, :cond_1

    .line 341
    const-string v10, "android.intent.extra.EMAIL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    .end local v0           #emailComponent:Landroid/content/ComponentName;
    :cond_1
    :goto_1
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 367
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 344
    .restart local v0       #emailComponent:Landroid/content/ComponentName;
    :cond_2
    new-instance v8, Landroid/content/ComponentName;

    const-string v10, "com.android.email"

    const-string v11, "com.android.email.activity.Welcome"

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v8, startEmailComponent:Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 347
    .local v9, startEmailComponents:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 348
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 349
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v10, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 354
    .end local v0           #emailComponent:Landroid/content/ComponentName;
    .end local v8           #startEmailComponent:Landroid/content/ComponentName;
    .end local v9           #startEmailComponents:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v10, 0x1

    if-ne v10, p1, :cond_1

    .line 355
    sget-object v10, Lcom/android/gallery3d/app/FaceMenuOperation;->sMmsComponents:[Landroid/content/ComponentName;

    invoke-direct {p0, v10, v7}, Lcom/android/gallery3d/app/FaceMenuOperation;->findTargetActivity([Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v5

    .line 356
    .local v5, mmsComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 357
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 358
    if-eqz p2, :cond_1

    .line 359
    const-string v10, "android.intent.extra.PHONE_NUMBER"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private showContactDetail(I)V
    .locals 9
    .parameter "faceId"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v3

    .line 224
    .local v3, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 227
    .local v0, application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 228
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/PersonManage;->getContactId(I)I

    move-result v1

    .line 229
    .local v1, contactId:I
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 230
    .local v2, contactUri:Landroid/net/Uri;
    invoke-static {v6, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 231
    .local v5, lookupUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 234
    iget-object v7, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showContactPhotoDialog(I)V
    .locals 10
    .parameter "faceId"

    .prologue
    const/4 v9, 0x0

    .line 750
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v3

    .line 751
    .local v3, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v3, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->isPhoneAccount(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 755
    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/PersonManage;->getContactId(I)I

    move-result v0

    .line 756
    .local v0, contactId:I
    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/data/ContactManage;->hasContactPhoto(I)Z

    move-result v4

    .line 757
    .local v4, hasContactPhoto:Z
    if-nez v4, :cond_0

    .line 759
    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v5

    .line 760
    .local v5, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0470

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, content:Ljava/lang/String;
    new-instance v2, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;

    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6, v9}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    invoke-direct {v2, p0, p1, v6}, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;ILcom/android/gallery3d/data/MediaItem;)V

    .line 762
    .local v2, dialogLister:Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d046f

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d047b

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d026c

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mContactPhotoDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showListDialog(ILjava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "title"
    .parameter
    .parameter "listener"
    .parameter "hasCancel"
    .parameter "cancelListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Z",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 774
    .local p2, content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 782
    :goto_0
    return-object v2

    .line 776
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 777
    .local v1, contentList:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 778
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f04002d

    const v6, 0x7f1000fa

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    if-eqz p4, :cond_2

    .line 780
    const v2, 0x7f0d026c

    invoke-virtual {v0, v2, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method private showPersonCommandList(I)V
    .locals 21
    .parameter "faceId"

    .prologue
    .line 260
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v6

    .line 261
    .local v6, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-nez v6, :cond_0

    .line 322
    :goto_0
    return-void

    .line 263
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f040021

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 265
    .local v4, dialogview:Landroid/view/View;
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v10, v0, [Landroid/view/View;

    .line 266
    .local v10, itemlist:[Landroid/view/View;
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v13, v0, [Landroid/widget/TextView;

    .line 267
    .local v13, itemtextlist:[Landroid/widget/TextView;
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v14, v0, [Z

    .line 269
    .local v14, shouldItemShow:[Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    .line 270
    if-eqz v7, :cond_1

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v7, v0, :cond_1

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v7, v0, :cond_1

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v7, v0, :cond_2

    .line 274
    :cond_1
    const/16 v16, 0x1

    aput-boolean v16, v14, v7

    .line 269
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 275
    :cond_2
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v7, v0, :cond_3

    sget-boolean v16, Lcom/android/gallery3d/app/FaceMenuOperation;->BSUPPROTALLMENU:Z

    if-eqz v16, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->isPhoneAccount(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 276
    const/16 v16, 0x1

    aput-boolean v16, v14, v7

    goto :goto_2

    .line 278
    :cond_3
    const/16 v16, 0x0

    aput-boolean v16, v14, v7

    goto :goto_2

    .line 281
    :cond_4
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    .line 282
    .local v11, itemsId:[I
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v12, v0, [I

    fill-array-data v12, :array_1

    .line 283
    .local v12, itemstextId:[I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v9, v0, [I

    fill-array-data v9, :array_2

    .line 285
    .local v9, itemStringId:[I
    const/4 v7, 0x0

    :goto_3
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    .line 286
    aget v16, v11, v7

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    aput-object v16, v10, v7

    .line 287
    aget-object v16, v10, v7

    aget v17, v12, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    aput-object v16, v13, v7

    .line 288
    const/16 v16, 0x1

    aget-boolean v17, v14, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 289
    if-nez v7, :cond_5

    .line 290
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200c1

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {v6}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v16

    aget-object v17, v13, v7

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuOperation;->getLimitName(ILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v15

    .line 292
    .local v15, text:Ljava/lang/String;
    aget-object v16, v13, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    aget-object v16, v10, v7

    const v17, 0x7f100075

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 294
    .local v8, imageview:Landroid/widget/ImageView;
    const v16, 0x7f0201e6

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    aget-object v16, v10, v7

    new-instance v17, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;

    const/16 v18, 0x7

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .end local v8           #imageview:Landroid/widget/ImageView;
    .end local v15           #text:Ljava/lang/String;
    :goto_4
    aget-object v16, v13, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, -0x100

    invoke-virtual/range {v16 .. v20}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 285
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 296
    :cond_5
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v7, v0, :cond_6

    .line 297
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200c4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    aget-object v16, v13, v7

    add-int/lit8 v17, v7, -0x1

    aget v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 299
    aget-object v16, v10, v7

    new-instance v17, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 300
    :cond_6
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v7, v0, :cond_7

    .line 301
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200c2

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    aget-object v16, v13, v7

    add-int/lit8 v17, v7, -0x1

    aget v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 303
    aget-object v16, v10, v7

    new-instance v17, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 305
    :cond_7
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200c3

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    aget-object v16, v13, v7

    add-int/lit8 v17, v7, -0x1

    aget v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 307
    aget-object v16, v10, v7

    new-instance v17, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 311
    :cond_8
    aget-object v16, v10, v7

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 315
    :cond_9
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-direct/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 318
    .local v5, dialogwindow:Landroid/view/Window;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 320
    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 281
    nop

    :array_0
    .array-data 0x4
        0x73t 0x0t 0x10t 0x7ft
        0x76t 0x0t 0x10t 0x7ft
        0x79t 0x0t 0x10t 0x7ft
        0x7ct 0x0t 0x10t 0x7ft
        0x7ft 0x0t 0x10t 0x7ft
        0x82t 0x0t 0x10t 0x7ft
        0x85t 0x0t 0x10t 0x7ft
    .end array-data

    .line 282
    :array_1
    .array-data 0x4
        0x74t 0x0t 0x10t 0x7ft
        0x78t 0x0t 0x10t 0x7ft
        0x7bt 0x0t 0x10t 0x7ft
        0x7et 0x0t 0x10t 0x7ft
        0x81t 0x0t 0x10t 0x7ft
        0x84t 0x0t 0x10t 0x7ft
        0x87t 0x0t 0x10t 0x7ft
    .end array-data

    .line 283
    :array_2
    .array-data 0x4
        0x90t 0x3t 0xdt 0x7ft
        0x91t 0x3t 0xdt 0x7ft
        0x92t 0x3t 0xdt 0x7ft
        0x93t 0x3t 0xdt 0x7ft
        0x9at 0x3t 0xdt 0x7ft
        0x94t 0x3t 0xdt 0x7ft
    .end array-data
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->cleanup()V

    .line 922
    :cond_0
    return-void
.end method

.method public handleContactResult(ILandroid/content/Intent;)V
    .locals 7
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 695
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v0

    .line 696
    .local v0, faceFlag:Z
    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceIdForReqContact:I

    .line 697
    .local v1, faceId:I
    iput v6, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceIdForReqContact:I

    .line 699
    if-eqz v0, :cond_0

    if-ne v6, p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v2

    .line 703
    .local v2, faceinfo:Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 707
    .local v3, resultUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/data/ContactManage;->isNameExist(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 708
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v4

    .line 709
    .local v4, themeContext:Landroid/view/ContextThemeWrapper;
    const v5, 0x7f0d0485

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 712
    .end local v4           #themeContext:Landroid/view/ContextThemeWrapper;
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v2}, Lcom/android/gallery3d/data/FaceInfoProcess;->attachContact(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/gallery3d/data/FaceInfo;)V

    .line 714
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/PhotoPage;->onActionBarWanted()V

    .line 715
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->showContactPhotoDialog(I)V

    goto :goto_0
.end method

.method public onClick(II)V
    .locals 0
    .parameter "type"
    .parameter "faceId"

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 164
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->setting(I)V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->makeCall(I)V

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(I)V

    goto :goto_0

    .line 173
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(I)V

    goto :goto_0

    .line 176
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation;->showContactDetail(I)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetMenu()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 797
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mContactPhotoDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mDialogList:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 799
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->dismiss()V

    .line 800
    :cond_0
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/app/PhotoPage$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 185
    return-void
.end method

.method public showNameList(I)V
    .locals 14
    .parameter "faceId"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v11

    .line 473
    .local v11, faceFlag:Z
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getSimilarPersonWithoutNull(I)[Ljava/lang/String;

    move-result-object v13

    .line 474
    .local v13, simlarpersons:[Ljava/lang/String;
    if-eqz v11, :cond_0

    if-eqz v13, :cond_0

    array-length v1, v13

    if-gtz v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    .line 477
    .local v10, context:Landroid/content/Context;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v2, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v3, commandIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    array-length v1, v13

    if-ge v12, v1, :cond_2

    .line 480
    aget-object v1, v13, v12

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 483
    :cond_2
    const v1, 0x7f0d047a

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    array-length v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const v1, 0x7f0d0393

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    array-length v1, v13

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;

    const/4 v4, 0x4

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 489
    .local v0, listener:Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;
    const v5, 0x7f0d0474

    const/4 v8, 0x1

    move-object v4, p0

    move-object v6, v2

    move-object v7, v0

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/FaceMenuOperation;->showListDialog(ILjava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mDialogList:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showSelectNameMenu(I)V
    .locals 18
    .parameter "faceId"

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v4

    .line 600
    .local v4, faceFlag:Z
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getSimilarPersonWithoutNull(I)[Ljava/lang/String;

    move-result-object v11

    .line 601
    .local v11, simlarpersons:[Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v11, :cond_0

    array-length v13, v11

    if-gtz v13, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040020

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 605
    .local v2, dialogview:Landroid/view/View;
    const/4 v13, 0x4

    new-array v6, v13, [Landroid/view/View;

    .line 606
    .local v6, itemlist:[Landroid/view/View;
    const/4 v13, 0x4

    new-array v9, v13, [Landroid/widget/TextView;

    .line 607
    .local v9, itemtextlist:[Landroid/widget/TextView;
    const/4 v13, 0x4

    new-array v7, v13, [I

    fill-array-data v7, :array_0

    .line 608
    .local v7, itemsId:[I
    const/4 v13, 0x4

    new-array v8, v13, [I

    fill-array-data v8, :array_1

    .line 609
    .local v8, itemstextId:[I
    array-length v13, v11

    array-length v14, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    array-length v14, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 611
    .local v10, n:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_4

    .line 612
    aget v13, v7, v5

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    aput-object v13, v6, v5

    .line 613
    aget-object v13, v6, v5

    aget v14, v8, v5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    aput-object v13, v9, v5

    .line 614
    array-length v13, v7

    add-int/lit8 v13, v13, -0x1

    if-ne v5, v13, :cond_2

    .line 615
    aget-object v13, v9, v5

    const v14, 0x7f0d047a

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 616
    aget-object v13, v6, v5

    new-instance v14, Lcom/android/gallery3d/app/FaceMenuOperation$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation$1;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    :goto_2
    aget-object v13, v9, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, -0x100

    invoke-virtual/range {v13 .. v17}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 611
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 622
    :cond_2
    if-ge v5, v10, :cond_3

    .line 623
    aget-object v13, v11, v5

    aget-object v14, v9, v5

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/gallery3d/app/FaceMenuOperation;->getLimitString(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v12

    .line 624
    .local v12, text:Ljava/lang/String;
    aget-object v13, v9, v5

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    aget-object v13, v6, v5

    new-instance v14, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v5, v1}, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 627
    .end local v12           #text:Ljava/lang/String;
    :cond_3
    aget-object v13, v6, v5

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 632
    :cond_4
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;

    .line 634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 635
    .local v3, dialogwindow:Landroid/view/Window;
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/view/Window;->clearFlags(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 637
    invoke-virtual {v3, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 607
    :array_0
    .array-data 0x4
        0x67t 0x0t 0x10t 0x7ft
        0x69t 0x0t 0x10t 0x7ft
        0x6ct 0x0t 0x10t 0x7ft
        0x6ft 0x0t 0x10t 0x7ft
    .end array-data

    .line 608
    :array_1
    .array-data 0x4
        0x68t 0x0t 0x10t 0x7ft
        0x6bt 0x0t 0x10t 0x7ft
        0x6et 0x0t 0x10t 0x7ft
        0x71t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method public showShareMenu(I)V
    .locals 21
    .parameter "faceId"

    .prologue
    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v5

    .line 642
    .local v5, faceFlag:Z
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v6

    .line 643
    .local v6, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f040021

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 647
    .local v3, dialogview:Landroid/view/View;
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v10, v0, [Landroid/view/View;

    .line 648
    .local v10, itemlist:[Landroid/view/View;
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v13, v0, [Landroid/widget/TextView;

    .line 649
    .local v13, itemtextlist:[Landroid/widget/TextView;
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v14, v0, [Z

    .line 650
    .local v14, shouldItemShow:[Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    .line 651
    if-eqz v7, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v7, v0, :cond_3

    .line 654
    :cond_2
    const/16 v16, 0x1

    aput-boolean v16, v14, v7

    .line 650
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 656
    :cond_3
    const/16 v16, 0x0

    aput-boolean v16, v14, v7

    goto :goto_2

    .line 659
    :cond_4
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    .line 660
    .local v11, itemsId:[I
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v12, v0, [I

    fill-array-data v12, :array_1

    .line 661
    .local v12, itemstextId:[I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v9, v0, [I

    fill-array-data v9, :array_2

    .line 663
    .local v9, itemStringId:[I
    const/4 v7, 0x0

    :goto_3
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 664
    aget v16, v11, v7

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    aput-object v16, v10, v7

    .line 665
    aget-object v16, v10, v7

    aget v17, v12, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    aput-object v16, v13, v7

    .line 666
    const/16 v16, 0x1

    aget-boolean v17, v14, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 667
    if-nez v7, :cond_5

    .line 668
    invoke-virtual {v6}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v16

    aget-object v17, v13, v7

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuOperation;->getLimitName(ILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v15

    .line 669
    .local v15, text:Ljava/lang/String;
    aget-object v16, v13, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200c1

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    aget-object v16, v10, v7

    const v17, 0x7f100075

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 672
    .local v8, imageview:Landroid/widget/ImageView;
    const v16, 0x7f0201e6

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 680
    .end local v8           #imageview:Landroid/widget/ImageView;
    .end local v15           #text:Ljava/lang/String;
    :goto_4
    aget-object v16, v13, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, -0x100

    invoke-virtual/range {v16 .. v20}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 681
    aget-object v16, v10, v7

    new-instance v17, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;-><init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 673
    :cond_5
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v7, v0, :cond_6

    .line 674
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200bf

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    aget-object v16, v13, v7

    add-int/lit8 v17, v7, -0x1

    aget v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 677
    :cond_6
    aget-object v16, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200c0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    aget-object v16, v13, v7

    add-int/lit8 v17, v7, -0x1

    aget v17, v9, v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 683
    :cond_7
    aget-object v16, v10, v7

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 687
    :cond_8
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-direct/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 689
    .local v4, dialogwindow:Landroid/view/Window;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 691
    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 659
    nop

    :array_0
    .array-data 0x4
        0x73t 0x0t 0x10t 0x7ft
        0x76t 0x0t 0x10t 0x7ft
        0x79t 0x0t 0x10t 0x7ft
        0x7ct 0x0t 0x10t 0x7ft
        0x7ft 0x0t 0x10t 0x7ft
        0x82t 0x0t 0x10t 0x7ft
        0x85t 0x0t 0x10t 0x7ft
    .end array-data

    .line 660
    :array_1
    .array-data 0x4
        0x74t 0x0t 0x10t 0x7ft
        0x78t 0x0t 0x10t 0x7ft
        0x7bt 0x0t 0x10t 0x7ft
        0x7et 0x0t 0x10t 0x7ft
        0x81t 0x0t 0x10t 0x7ft
        0x84t 0x0t 0x10t 0x7ft
        0x87t 0x0t 0x10t 0x7ft
    .end array-data

    .line 661
    :array_2
    .array-data 0x4
        0x90t 0x3t 0xdt 0x7ft
        0x91t 0x3t 0xdt 0x7ft
        0x92t 0x3t 0xdt 0x7ft
        0x93t 0x3t 0xdt 0x7ft
        0x9at 0x3t 0xdt 0x7ft
        0x94t 0x3t 0xdt 0x7ft
    .end array-data
.end method

.method public showShareMenu(ILandroid/graphics/Point;I)V
    .locals 11
    .parameter "faceId"
    .parameter "point"
    .parameter "padding"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 493
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v4

    .line 494
    .local v4, faceFlag:Z
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getFaceInfo(I)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v5

    .line 495
    .local v5, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    if-nez v9, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->getContactIdByFaceId(I)I

    move-result v0

    .line 498
    .local v0, contactId:I
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/gallery3d/data/ContactManage;->getPhones(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 499
    .local v7, phoneNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/gallery3d/data/ContactManage;->getEmails(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 500
    .local v1, emailAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    move v2, v8

    .line 501
    .local v2, enableCall:Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    move v3, v8

    .line 503
    .local v3, enableEmail:Z
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v9, v6, p1}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->updateName(Ljava/lang/String;I)V

    .line 505
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->enableCall(Z)V

    .line 506
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->enableMessage(Z)V

    .line 507
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v9, v3}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->enableEmail(Z)V

    .line 508
    iget-object v9, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v9, p2, p3, v8}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->updateLocation(Landroid/graphics/Point;IZ)V

    goto :goto_0

    .end local v2           #enableCall:Z
    .end local v3           #enableEmail:Z
    .end local v6           #name:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 500
    goto :goto_1
.end method

.method public startContactActivity(I)V
    .locals 4
    .parameter "faceId"

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v0

    .line 570
    .local v0, faceFlag:Z
    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceIdForReqContact:I

    .line 572
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 573
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v2, "com.huawei.android.contacts.SelectAndCreate"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mReqContact:I

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public updateShareMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 512
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v0

    .line 513
    .local v0, faceFlag:Z
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

    if-nez v5, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->getShowFaceId()I

    move-result v1

    .line 516
    .local v1, faceId:I
    if-ltz v1, :cond_0

    .line 518
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 519
    .local v3, point:Landroid/graphics/Point;
    const/4 v5, 0x1

    new-array v2, v5, [I

    .line 520
    .local v2, leftPadding:[I
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v5, v1, v3, v2}, Lcom/android/gallery3d/app/PhotoPage;->getShareMenuPoint(ILandroid/graphics/Point;[I)Z

    move-result v4

    .line 521
    .local v4, result:Z
    if-eqz v4, :cond_0

    .line 522
    iget-object v5, p0, Lcom/android/gallery3d/app/FaceMenuOperation;->mFaceMenuPopupWindow:Lcom/android/gallery3d/app/FaceMenuPopupWindow;

    aget v6, v2, v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->updateLocation(Landroid/graphics/Point;IZ)V

    goto :goto_0
.end method
