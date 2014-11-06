.class public Lcom/android/gallery3d/filtershow/FilterShowActivity;
.super Landroid/app/Activity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field protected static final ANIMATE_PANELS:Z = true

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.EDITOR_CROP"

.field private static final DELAY_FILL_BORDERS:I = 0x1f4

.field public static final LAUNCH_FULLSCREEN:Ljava/lang/String; = "launch-fullscreen"

.field private static final LOGTAG:Ljava/lang/String; = "FilterShowActivity"

.field static OMRONJNI_LOADED:Z = false

.field private static final SEEK_BAR_MAX:I = 0x258

.field private static final SELECT_PICTURE:I = 0x1

.field public static final TINY_PLANET_ACTION:Ljava/lang/String; = "com.android.camera.action.TINY_PLANET"

.field private static mImageBorderSize:I


# instance fields
.field private mBorderButton:Landroid/widget/ImageButton;

.field private final mBottomPanelButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mColorsButton:Landroid/widget/ImageButton;

.field private mColorsButtonLine:Landroid/widget/ImageView;

.field private mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mFaceButton:Landroid/widget/ImageButton;

.field private mFaceButtonLine:Landroid/widget/ImageView;

.field private mFaceWarning:Landroid/widget/TextView;

.field private mFxButton:Landroid/widget/ImageButton;

.field private mFxButtonLine:Landroid/widget/ImageView;

.field private mGeometryButton:Landroid/widget/ImageButton;

.field private mGeometryButtonLine:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

.field private mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

.field private mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

.field private mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

.field private mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

.field private mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

.field private mLinearLayoutFaceList:Landroid/widget/LinearLayout;

.field private mListBorders:Landroid/view/View;

.field private mListColors:Landroid/view/View;

.field private mListFace:Landroid/view/View;

.field private mListFilterButtons:Landroid/view/View;

.field private mListFx:Landroid/view/View;

.field private mListGeometry:Landroid/view/View;

.field private final mListViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private final mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareManager:Lcom/android/gallery3d/app/ShareManager;

.field private mSharedOutputFile:Ljava/io/File;

.field private mSharingImage:Z

.field private mShowingHistoryPanel:Z

.field private mShowingImageStatePanel:Z

.field private mWidthFaceList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    .line 1374
    const-string v0, "jni_filtershow_filters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1377
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->OMRONJNI_LOADED:Z

    .line 1380
    :try_start_0
    const-string v0, "jni_omron_facebeautifier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1381
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->OMRONJNI_LOADED:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :goto_0
    return-void

    .line 1382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/PanelController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 127
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 128
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 129
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 130
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 131
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 132
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 133
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 134
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 135
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 136
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 138
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 139
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFace:Landroid/view/View;

    .line 140
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 141
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 142
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 143
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 145
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 146
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    .line 147
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 148
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 149
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 151
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButtonLine:Landroid/widget/ImageView;

    .line 152
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButtonLine:Landroid/widget/ImageView;

    .line 153
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButtonLine:Landroid/widget/ImageView;

    .line 154
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButtonLine:Landroid/widget/ImageView;

    .line 156
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceWarning:Landroid/widget/TextView;

    .line 157
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLinearLayoutFaceList:Landroid/widget/LinearLayout;

    .line 160
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 166
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 169
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 170
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    .line 171
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    .line 174
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 176
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 1275
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListBorders(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->canFaceBeautifer(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/PanelController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method private canFaceBeautifer(Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v2

    .line 552
    :cond_1
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;-><init>()V

    .line 553
    .local v0, faceDetection:Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->detect(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 554
    .local v1, num:I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/omron/FaceDetectionIMP;->destroy()V

    .line 555
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1242
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$8;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-object v0
.end method

.method private createUnsaveAndConfirmDialog()V
    .locals 4

    .prologue
    .line 775
    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 790
    .local v1, photoeditBakBtnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 791
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 792
    .local v0, isSave:Landroid/app/AlertDialog;
    const v3, 0x7f0d03d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 793
    const v3, 0x7f0d03d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 794
    const v3, 0x7f0d03d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 795
    const v3, 0x7f0d03d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 796
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 797
    return-void
.end method

.method private fillListBorders(Landroid/widget/LinearLayout;)V
    .locals 20
    .parameter "listBorders"

    .prologue
    .line 1000
    const/4 v13, 0x0

    .line 1001
    .local v13, p:I
    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v5, v0, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 1002
    .local v5, borders:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    add-int/lit8 v14, v13, 0x1

    .end local v13           #p:I
    .local v14, p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v16, v5, v13

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0200c8

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1005
    .local v8, npd1:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v13, v14, 0x1

    .end local v14           #p:I
    .restart local v13       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v16, v5, v14

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0200c9

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1007
    .local v9, npd2:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v14, v13, 0x1

    .end local v13           #p:I
    .restart local v14       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v16, v5, v13

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0200ca

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1009
    .local v10, npd3:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v13, v14, 0x1

    .end local v14           #p:I
    .restart local v13       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v16, v5, v14

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0200cb

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1011
    .local v11, npd4:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v14, v13, 0x1

    .end local v13           #p:I
    .restart local v14       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v16, v5, v13

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0200cc

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1013
    .local v12, npd5:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v13, v14, 0x1

    .end local v14           #p:I
    .restart local v13       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v16, v5, v14

    .line 1014
    add-int/lit8 v14, v13, 0x1

    .end local v13           #p:I
    .restart local v14       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/high16 v17, -0x100

    sget v18, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v16, v5, v13

    .line 1015
    add-int/lit8 v13, v14, 0x1

    .end local v14           #p:I
    .restart local v13       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/high16 v17, -0x100

    sget v18, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v19, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct/range {v16 .. v19}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v16, v5, v14

    .line 1017
    add-int/lit8 v14, v13, 0x1

    .end local v13           #p:I
    .restart local v14       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/16 v17, -0x1

    sget v18, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v16, v5, v13

    .line 1018
    add-int/lit8 v13, v14, 0x1

    .end local v14           #p:I
    .restart local v13       #p:I
    new-instance v16, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/16 v17, -0x1

    sget v18, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v19, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct/range {v16 .. v19}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v16, v5, v14

    .line 1020
    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1031
    .local v2, BorderBitmaps:[I
    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    .line 1043
    .local v4, borderNameId:[I
    const/4 v15, 0x0

    .line 1044
    .local v15, previousFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v13, :cond_1

    .line 1045
    new-instance v6, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;-><init>(Landroid/content/Context;)V

    .line 1046
    .local v6, filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
    if-nez v7, :cond_0

    .line 1047
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 1054
    :goto_1
    aget-object v16, v5, v7

    aget v17, v4, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 1055
    aget-object v16, v5, v7

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 1056
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 1057
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setBorder(Z)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 1059
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setShowTitle(Z)V

    .line 1060
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1061
    move-object v15, v6

    .line 1044
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    add-int/lit8 v17, v7, -0x1

    aget v17, v2, v17

    invoke-static/range {v16 .. v17}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1052
    .local v3, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setBorderBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1063
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
    :cond_1
    return-void

    .line 1020
    :array_0
    .array-data 0x4
        0xb0t 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1031
    :array_1
    .array-data 0x4
        0xf4t 0x1t 0xdt 0x7ft
        0xf5t 0x1t 0xdt 0x7ft
        0xf6t 0x1t 0xdt 0x7ft
        0xf7t 0x1t 0xdt 0x7ft
        0xf8t 0x1t 0xdt 0x7ft
        0xf9t 0x1t 0xdt 0x7ft
        0xfat 0x1t 0xdt 0x7ft
        0xfbt 0x1t 0xdt 0x7ft
        0xfct 0x1t 0xdt 0x7ft
        0xfdt 0x1t 0xdt 0x7ft
    .end array-data
.end method

.method private fillListFace(Landroid/widget/LinearLayout;)V
    .locals 12
    .parameter "listFace"

    .prologue
    const/4 v11, 0x6

    .line 881
    new-array v3, v11, [I

    fill-array-data v3, :array_0

    .line 889
    .local v3, faceOptionIDs:[I
    new-array v4, v11, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;

    invoke-direct {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;-><init>()V

    aput-object v10, v4, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceColor;

    invoke-direct {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceColor;-><init>()V

    aput-object v10, v4, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceReshape;

    invoke-direct {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceReshape;-><init>()V

    aput-object v10, v4, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterNoseReshape;

    invoke-direct {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterNoseReshape;-><init>()V

    aput-object v10, v4, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterTeethWhiten;

    invoke-direct {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTeethWhiten;-><init>()V

    aput-object v10, v4, v9

    const/4 v9, 0x5

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;

    invoke-direct {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;-><init>()V

    aput-object v10, v4, v9

    .line 898
    .local v4, filters:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    new-array v0, v11, [I

    fill-array-data v0, :array_1

    .line 907
    .local v0, FaceBitmaps:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v9, v4

    if-ge v5, v9, :cond_1

    .line 908
    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 909
    .local v2, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget v9, v3, v5

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 910
    .local v7, v:Landroid/view/View;
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 911
    .local v6, pos:I
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 913
    aget-object v9, v4, v5

    aget-object v10, v4, v5

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 914
    instance-of v9, v7, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    if-eqz v9, :cond_0

    .line 915
    aget-object v9, v4, v5

    check-cast v7, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 916
    :cond_0
    aget-object v9, v4, v5

    invoke-virtual {v2, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 917
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aget v10, v0, v5

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 918
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->updateFilteredImage(Landroid/graphics/Bitmap;)V

    .line 919
    invoke-virtual {v2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 921
    aget v9, v3, v5

    invoke-virtual {v2, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setId(I)V

    .line 922
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v10, v2}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 923
    invoke-virtual {p1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 924
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 925
    .local v8, width:I
    iget v9, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mWidthFaceList:I

    const/high16 v10, 0x40c0

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v8

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mWidthFaceList:I

    .line 907
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 927
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    .end local v6           #pos:I
    .end local v8           #width:I
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->updateFaceListLayoutPara()V

    .line 928
    return-void

    .line 881
    nop

    :array_0
    .array-data 0x4
        0xa5t 0x0t 0x10t 0x7ft
        0xa6t 0x0t 0x10t 0x7ft
        0xa7t 0x0t 0x10t 0x7ft
        0xa8t 0x0t 0x10t 0x7ft
        0xa9t 0x0t 0x10t 0x7ft
        0xaat 0x0t 0x10t 0x7ft
    .end array-data

    .line 898
    :array_1
    .array-data 0x4
        0x23t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private fillListImages(Landroid/widget/LinearLayout;)V
    .locals 16
    .parameter "listFilters"

    .prologue
    .line 934
    const/16 v12, 0x12

    new-array v4, v12, [Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    .line 935
    .local v4, fxArray:[Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
    const/4 v8, 0x0

    .line 937
    .local v8, p:I
    const/16 v12, 0x9

    new-array v2, v12, [I

    fill-array-data v2, :array_0

    .line 949
    .local v2, drawid:[I
    const/16 v12, 0x9

    new-array v5, v12, [I

    fill-array-data v5, :array_1

    .line 961
    .local v5, fxNameid:[I
    new-instance v10, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const v12, 0x7f0d01ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Ljava/lang/String;)V

    .line 962
    .local v10, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v10, v12}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 963
    new-instance v12, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 965
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 968
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    const/4 v14, 0x0

    const v15, 0x7f0d0232

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 975
    .local v11, previousFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 976
    .local v7, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 978
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v12, v2

    if-ge v6, v12, :cond_0

    .line 979
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget v13, v2, v6

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 980
    .local v1, b:Landroid/graphics/Bitmap;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #p:I
    .local v9, p:I
    new-instance v12, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    aget v13, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v13}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    aput-object v12, v4, v8

    .line 978
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    .end local v9           #p:I
    .restart local v8       #p:I
    goto :goto_0

    .line 983
    .end local v1           #b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    .line 984
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 985
    .local v3, filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget-object v12, v4, v6

    invoke-virtual {v3, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 986
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 989
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 990
    move-object v11, v3

    .line 983
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 994
    .end local v3           #filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v12, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 995
    return-void

    .line 937
    :array_0
    .array-data 0x4
        0xdet 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 949
    :array_1
    .array-data 0x4
        0xd0t 0x2t 0xdt 0x7ft
        0x33t 0x2t 0xdt 0x7ft
        0x34t 0x2t 0xdt 0x7ft
        0x35t 0x2t 0xdt 0x7ft
        0x36t 0x2t 0xdt 0x7ft
        0xd4t 0x2t 0xdt 0x7ft
        0x37t 0x2t 0xdt 0x7ft
        0x38t 0x2t 0xdt 0x7ft
        0xd7t 0x2t 0xdt 0x7ft
    .end array-data
.end method

.method private getDefaultShareIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 713
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 716
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 718
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    return-object v0
.end method

.method private getScreenImageSize()I
    .locals 6

    .prologue
    .line 640
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 641
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 642
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 643
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 644
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 645
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 646
    .local v2, msize:I
    mul-int/lit16 v4, v2, 0x85

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v4, v5

    return v4
.end method

.method private hideSavingProgress()V
    .locals 2

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 673
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 674
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 677
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method private modifyButtonInterval()V
    .locals 6

    .prologue
    .line 869
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButtonLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 870
    .local v2, fxLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButtonLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 871
    .local v1, faceLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButtonLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 872
    .local v3, geometryLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButtonLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 873
    .local v0, colorsLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/high16 v5, 0x4220

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v5

    float-to-int v4, v5

    .line 874
    .local v4, lineWidth:I
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 875
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 876
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 877
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 878
    return-void
.end method

.method private showSavingProgress(Ljava/lang/String;)V
    .locals 6
    .parameter "albumName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 651
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 653
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 667
    :goto_0
    return-void

    .line 660
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_0
    if-nez p1, :cond_1

    .line 661
    const v2, 0x7f0d0254

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, progressText:Ljava/lang/String;
    :goto_1
    const-string v2, ""

    invoke-static {p0, v2, v1, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 666
    .restart local v0       #progress:Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 663
    .end local v0           #progress:Landroid/app/ProgressDialog;
    .end local v1           #progressText:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0d0255

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #progressText:Ljava/lang/String;
    goto :goto_1
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 536
    const v3, 0x7f10009b

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 537
    .local v0, filters:Landroid/view/View;
    const v3, 0x7f1000cc

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, loading:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 539
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 540
    const v3, 0x7f1000b7

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, tinyPlanetView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 542
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_0
    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 545
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 546
    return-void
.end method

.method private toggleImageStatePanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1131
    const v3, 0x7f100090

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1132
    .local v1, view:Landroid/view/View;
    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1134
    .local v2, viewList:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v3, :cond_0

    .line 1135
    const v3, 0x7f1000cd

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 1139
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 1140
    .local v0, translate:I
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-nez v3, :cond_1

    .line 1141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 1142
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;

    invoke-direct {v4, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1158
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 1159
    return-void

    .line 1153
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 1154
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private translateMainPanel(Landroid/view/View;)I
    .locals 6
    .parameter "viewPanel"

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 623
    .local v0, accessoryPanelWidth:I
    const v5, 0x7f10008d

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 624
    .local v4, mainViewWidth:I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 625
    .local v3, mainPanelWidth:I
    if-nez v3, :cond_0

    .line 626
    move v3, v4

    .line 628
    :cond_0
    const v5, 0x7f10009b

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 629
    .local v1, filtersPanelWidth:I
    if-ge v3, v1, :cond_1

    .line 630
    move v3, v1

    .line 632
    :cond_1
    sub-int v5, v4, v3

    sub-int v2, v5, v0

    .line 633
    .local v2, leftOver:I
    if-gez v2, :cond_2

    .line 634
    neg-int v5, v0

    .line 636
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateFaceListLayoutPara()V
    .locals 5

    .prologue
    .line 1162
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLinearLayoutFaceList:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1163
    .local v2, requested:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v2, :cond_0

    .line 1164
    const-string v3, "FilterShowActivity"

    const-string v4, "facelist layout is null "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #requested:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1169
    .restart local v2       #requested:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1170
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1171
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1172
    .local v0, displayWidth:I
    iget v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mWidthFaceList:I

    if-le v0, v3, :cond_1

    .line 1173
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1177
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLinearLayoutFaceList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    return-void

    .line 1175
    :cond_1
    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method


# virtual methods
.method public cannotLoadImage()V
    .locals 4

    .prologue
    .line 1260
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1261
    const v2, 0x7f0d01c0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, text:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1263
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1264
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 1273
    .end local v0           #text:Ljava/lang/CharSequence;
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 1266
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$9;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$9;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public completeSaveImage(Landroid/net/Uri;)V
    .locals 4
    .parameter "saveUri"

    .prologue
    .line 680
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 682
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 684
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prepare"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 688
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 689
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 690
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 691
    return-void
.end method

.method public disableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1108
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1109
    .local v0, b:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1110
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1111
    const v2, 0x3ecccccd

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 1113
    .end local v0           #b:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public enableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1116
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1117
    .local v0, b:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1118
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1119
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 1121
    .end local v0           #b:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public getPixelsFromDip(F)F
    .locals 3
    .parameter "value"

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1282
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public hideImageViews()V
    .locals 4

    .prologue
    .line 1089
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 1090
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 1091
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1093
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public hideListViews()V
    .locals 3

    .prologue
    .line 1083
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1084
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1086
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 1076
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 1077
    .local v1, views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 1078
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    .line 1080
    .end local v1           #views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public isShowingHistoryPanel()Z
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1351
    const-string v1, "FilterShowActivity"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1353
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1354
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1355
    .local v0, selectedImageUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 1358
    .end local v0           #selectedImageUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    .line 1256
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1183
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 1187
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->updateFaceListLayoutPara()V

    .line 1188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->setRenderScriptContext(Landroid/app/Activity;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDefaultBackgroundColor(I)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setDefaultBackgroundColor(I)V

    .line 210
    const/high16 v3, 0x4380

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setZoomedSize(F)V

    .line 211
    const/high16 v3, 0x4160

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 212
    const/high16 v3, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    .line 213
    const/high16 v3, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    .line 214
    const/high16 v3, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextSize(I)V

    .line 215
    const/high16 v3, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextPadding(I)V

    .line 216
    const/high16 v3, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextMargin(I)V

    .line 217
    const/high16 v3, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextSize(I)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalText(Ljava/lang/String;)V

    .line 219
    const/high16 v3, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextSize(I)V

    .line 220
    const/high16 v3, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextPadding(I)V

    .line 221
    const/high16 v3, 0x40c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setMargin(I)V

    .line 222
    const/high16 v3, 0x4100

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setTextMargin(I)V

    .line 223
    const/high16 v3, 0x40c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setMargin(I)V

    .line 224
    const/high16 v3, 0x4100

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setTextMargin(I)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 226
    .local v15, curveHandle:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    .line 227
    .local v16, curveHandleSize:I
    invoke-static/range {v15 .. v16}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    .line 228
    const/high16 v3, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveWidth(I)V

    .line 230
    const v3, 0x7f040024

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setContentView(I)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    .line 232
    .local v13, actionBar:Landroid/app/ActionBar;
    const v3, 0x7f0d0294

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 233
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 236
    new-instance v3, Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 238
    const v3, 0x7f1000a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 239
    .local v25, listFilters:Landroid/widget/LinearLayout;
    const v3, 0x7f1000a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 240
    .local v24, listFace:Landroid/widget/LinearLayout;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLinearLayoutFaceList:Landroid/widget/LinearLayout;

    .line 244
    const v3, 0x7f1000b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 245
    .local v23, listColors:Landroid/widget/LinearLayout;
    const v3, 0x7f1000af

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 247
    .local v26, listGeometry:Landroid/widget/LinearLayout;
    const v3, 0x7f100091

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 248
    const v3, 0x7f100096

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 249
    const v3, 0x7f100097

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 250
    const v3, 0x7f100092

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 251
    const v3, 0x7f100098

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 252
    const v3, 0x7f100093

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 253
    const v3, 0x7f100094

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 254
    const v3, 0x7f100095

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 255
    const v3, 0x7f100099

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    const/high16 v4, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectTextSize(I)V

    .line 258
    const/high16 v3, 0x41c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setTouchTolerance(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 269
    const v3, 0x7f1000a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 270
    const v3, 0x7f1000a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFace:Landroid/view/View;

    .line 271
    const v3, 0x7f1000ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 272
    const v3, 0x7f1000ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 273
    const v3, 0x7f10009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 274
    const v3, 0x7f1000b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFace:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 282
    const v3, 0x7f1000c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 283
    const v3, 0x7f1000c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    .line 284
    const v3, 0x7f1000cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 285
    const v3, 0x7f1000c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 286
    const v3, 0x7f1000c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 288
    const v3, 0x7f1000c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButtonLine:Landroid/widget/ImageView;

    .line 289
    const v3, 0x7f1000c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButtonLine:Landroid/widget/ImageView;

    .line 290
    const v3, 0x7f1000c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButtonLine:Landroid/widget/ImageView;

    .line 291
    const v3, 0x7f1000ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButtonLine:Landroid/widget/ImageView;

    .line 293
    const v3, 0x7f1000ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceWarning:Landroid/widget/TextView;

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceWarning:Landroid/widget/TextView;

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 302
    sget-boolean v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->OMRONJNI_LOADED:Z

    if-eqz v3, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 309
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/PanelController;->setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100091

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100096

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100097

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100092

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100093

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100094

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100095

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100098

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f100099

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 345
    sget-boolean v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->OMRONJNI_LOADED:Z

    if-eqz v3, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFace:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceWarning:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 348
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 352
    const/4 v3, 0x4

    new-array v10, v3, [I

    fill-array-data v10, :array_0

    .line 358
    .local v10, GeometryIDs:[I
    const/4 v3, 0x4

    new-array v11, v3, [I

    fill-array-data v11, :array_1

    .line 364
    .local v11, GeometryNameIDs:[I
    const/4 v3, 0x4

    new-array v9, v3, [I

    fill-array-data v9, :array_2

    .line 370
    .local v9, GeometryBitmaps:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    array-length v3, v10

    move/from16 v0, v20

    if-ge v0, v3, :cond_2

    .line 371
    new-instance v18, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 372
    .local v18, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget v3, v10, v20

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 373
    .local v35, v:Landroid/view/View;
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v31

    .line 374
    .local v31, pos:I
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 375
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    const/4 v4, 0x0

    aget v5, v11, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, v9, v20

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 378
    .local v14, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->updateFilteredImage(Landroid/graphics/Bitmap;)V

    .line 379
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 380
    aget v3, v10, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setId(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 382
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 370
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 305
    .end local v9           #GeometryBitmaps:[I
    .end local v10           #GeometryIDs:[I
    .end local v11           #GeometryNameIDs:[I
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    .end local v20           #i:I
    .end local v31           #pos:I
    .end local v35           #v:Landroid/view/View;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->modifyButtonInterval()V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButtonLine:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 385
    .restart local v9       #GeometryBitmaps:[I
    .restart local v10       #GeometryIDs:[I
    .restart local v11       #GeometryNameIDs:[I
    .restart local v20       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 387
    const/16 v3, 0xa

    new-array v0, v3, [I

    move-object/from16 v32, v0

    fill-array-data v32, :array_3

    .line 399
    .local v32, recastIDs:[I
    const/16 v3, 0xa

    new-array v0, v3, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    aput-object v4, v19, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    aput-object v4, v19, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    aput-object v4, v19, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    aput-object v4, v19, v3

    .line 412
    .local v19, filters:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 413
    new-instance v18, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 414
    .restart local v18       #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget v3, v32, v20

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 415
    .restart local v35       #v:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v31

    .line 416
    .restart local v31       #pos:I
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 418
    aget-object v3, v19, v20

    aget-object v4, v19, v20

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 419
    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    if-eqz v3, :cond_3

    .line 420
    aget-object v3, v19, v20

    check-cast v35, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    .end local v35           #v:Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 421
    :cond_3
    aget-object v3, v19, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 422
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 424
    aget v3, v32, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setId(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 426
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 412
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 429
    .end local v18           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    .end local v31           #pos:I
    :cond_4
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_4

    .line 433
    .local v29, overlayIDs:[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_5

    .line 437
    .local v28, overlayBitmaps:[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v30, v0

    fill-array-data v30, :array_6

    .line 442
    .local v30, overlayNames:[I
    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    .line 443
    new-instance v18, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;-><init>(Landroid/content/Context;)V

    .line 444
    .local v18, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    aget v3, v29, v20

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 445
    .restart local v35       #v:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v31

    .line 446
    .restart local v31       #pos:I
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 447
    aget v34, v30, v20

    .line 448
    .local v34, sid:I
    new-instance v17, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    .line 453
    .local v17, efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    const/16 v3, -0x12c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;->setParameter(I)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, v28, v20

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 457
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 458
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 459
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 461
    aget v3, v29, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setId(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 463
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 442
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 466
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    .end local v18           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    .end local v31           #pos:I
    .end local v34           #sid:I
    .end local v35           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f1000a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f10009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f10009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 469
    const v3, 0x7f1000cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const v3, 0x7f1000ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ListView;

    .line 473
    .local v27, operationsList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 475
    const v3, 0x7f10008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ListView;

    .line 476
    .local v21, imageStateList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageStateAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V

    .line 478
    sget-boolean v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->OMRONJNI_LOADED:Z

    if-eqz v3, :cond_6

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListFace(Landroid/widget/LinearLayout;)V

    .line 481
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListImages(Landroid/widget/LinearLayout;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    const v3, 0x7f10009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/SeekBar;

    .line 494
    .local v33, seekBar:Landroid/widget/SeekBar;
    const/16 v3, 0x258

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f10009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->setRowPanel(Landroid/view/View;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f10009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v4, 0x7f1000a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v4, 0x7f10009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v4, 0x7f10009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/PanelController;->setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->setCurrentPanel(Landroid/view/View;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 506
    .local v22, intent:Landroid/content/Intent;
    const-string v3, "launch-fullscreen"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 510
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 511
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 516
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 518
    .local v12, action:Ljava/lang/String;
    const-string v3, "com.android.camera.action.EDITOR_CROP"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f1000b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 524
    :cond_8
    :goto_5
    new-instance v3, Lcom/android/gallery3d/app/ShareManager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/ShareManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/ShareManager;->setOnShareTargetSelectedListener(Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;)V

    .line 533
    return-void

    .line 513
    .end local v12           #action:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->pickImage()V

    goto :goto_4

    .line 520
    .restart local v12       #action:Ljava/lang/String;
    :cond_a
    const-string v3, "com.android.camera.action.TINY_PLANET"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v4, 0x7f1000b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_5

    .line 352
    :array_0
    .array-data 0x4
        0xb0t 0x0t 0x10t 0x7ft
        0xb1t 0x0t 0x10t 0x7ft
        0xb2t 0x0t 0x10t 0x7ft
        0xb3t 0x0t 0x10t 0x7ft
    .end array-data

    .line 358
    :array_1
    .array-data 0x4
        0xeat 0x1t 0xdt 0x7ft
        0xebt 0x1t 0xdt 0x7ft
        0xect 0x1t 0xdt 0x7ft
        0xedt 0x1t 0xdt 0x7ft
    .end array-data

    .line 364
    :array_2
    .array-data 0x4
        0xd7t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 387
    :array_3
    .array-data 0x4
        0xb7t 0x0t 0x10t 0x7ft
        0xb9t 0x0t 0x10t 0x7ft
        0xbft 0x0t 0x10t 0x7ft
        0xbat 0x0t 0x10t 0x7ft
        0xbct 0x0t 0x10t 0x7ft
        0xc2t 0x0t 0x10t 0x7ft
        0xb8t 0x0t 0x10t 0x7ft
        0xc0t 0x0t 0x10t 0x7ft
        0xbbt 0x0t 0x10t 0x7ft
        0xc1t 0x0t 0x10t 0x7ft
    .end array-data

    .line 429
    :array_4
    .array-data 0x4
        0xbdt 0x0t 0x10t 0x7ft
        0xbet 0x0t 0x10t 0x7ft
    .end array-data

    .line 433
    :array_5
    .array-data 0x4
        0xd1t 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 437
    :array_6
    .array-data 0x4
        0x3bt 0x2t 0xdt 0x7ft
        0xe7t 0x1t 0xdt 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f120007

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 725
    const v5, 0x7f10024f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 726
    .local v2, showHistory:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v5, :cond_0

    .line 727
    const v5, 0x7f0d01c8

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 731
    :goto_0
    const v5, 0x7f100250

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 732
    .local v3, showState:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v5, :cond_1

    .line 733
    const v5, 0x7f0d01ca

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 741
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/ShareManager;->setIntent(Landroid/content/Intent;)V

    .line 742
    const v5, 0x7f10024c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 743
    .local v4, undoItem:Landroid/view/MenuItem;
    const v5, 0x7f10024d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 744
    .local v0, redoItem:Landroid/view/MenuItem;
    const v5, 0x7f10024e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 745
    .local v1, resetItem:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 746
    const/4 v5, 0x1

    return v5

    .line 729
    .end local v0           #redoItem:Landroid/view/MenuItem;
    .end local v1           #resetItem:Landroid/view/MenuItem;
    .end local v3           #showState:Landroid/view/MenuItem;
    .end local v4           #undoItem:Landroid/view/MenuItem;
    :cond_0
    const v5, 0x7f0d01c7

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 735
    .restart local v3       #showState:Landroid/view/MenuItem;
    :cond_1
    const v5, 0x7f0d01c9

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->cancel(Z)Z

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 615
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->quitHandlerThread()V

    .line 619
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1332
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController;->resetParameters()V

    .line 1338
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 1339
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 760
    packed-switch p1, :pswitch_data_0

    .line 771
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 762
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->createUnsaveAndConfirmDialog()V

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 809
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 865
    :goto_0
    return v2

    .line 812
    :sswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v4, :cond_0

    .line 813
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 815
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 816
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 817
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 819
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const v4, 0x7f0d01c5

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 821
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController;->resetParameters()V

    .line 823
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 827
    .end local v0           #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .end local v1           #position:I
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 828
    .restart local v0       #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->redo()I

    move-result v1

    .line 829
    .restart local v1       #position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 831
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const v4, 0x7f0d01c6

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 837
    .end local v0           #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .end local v1           #position:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    goto :goto_0

    .line 841
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleImageStatePanel()V

    goto :goto_0

    .line 845
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    goto :goto_0

    .line 849
    :sswitch_5
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->createUnsaveAndConfirmDialog()V

    goto :goto_0

    .line 852
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    .line 857
    :sswitch_6
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ShareManager;->show()V

    goto :goto_0

    .line 861
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto :goto_0

    .line 809
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_5
        0x7f10024a -> :sswitch_7
        0x7f10024b -> :sswitch_6
        0x7f10024c -> :sswitch_0
        0x7f10024d -> :sswitch_1
        0x7f10024e -> :sswitch_2
        0x7f10024f -> :sswitch_4
        0x7f100250 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 751
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 752
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ShareManager;->hideIfShowing()V

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 756
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 801
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 805
    :cond_0
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 697
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 699
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prepare"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 702
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 705
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v2, p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 707
    return v4
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 194
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, mimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/common/BitmapUtils;->isFilterShowSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotLoadImage()V

    .line 198
    :cond_0
    return-void
.end method

.method public pickImage()V
    .locals 3

    .prologue
    .line 1342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1345
    const v1, 0x7f0d025a

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1347
    return-void
.end method

.method resetHistory()V
    .locals 4

    .prologue
    .line 1225
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 1227
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 1232
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 1233
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->reset()V

    .line 1234
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const v3, 0x7f0d01ce

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Ljava/lang/String;)V

    .line 1235
    .local v1, original:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1236
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/PanelController;->resetParameters()V

    .line 1237
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 1238
    return-void
.end method

.method public saveImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1361
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 1364
    .local v2, saveDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 1365
    .local v1, bucketId:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, albumName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 1367
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 1371
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #bucketId:I
    .end local v2           #saveDir:Ljava/io/File;
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    goto :goto_0
.end method

.method public showOriginalViews(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1070
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 1071
    .local v1, views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showOriginal(Z)V

    goto :goto_0

    .line 1073
    .end local v1           #views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public toggleHistoryPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1194
    const v3, 0x7f100090

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1195
    .local v1, view:Landroid/view/View;
    const v3, 0x7f1000cd

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1197
    .local v2, viewList:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v3, :cond_0

    .line 1198
    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 1202
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 1203
    .local v0, translate:I
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-nez v3, :cond_1

    .line 1204
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 1205
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$7;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1221
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 1222
    return-void

    .line 1216
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 1217
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public unselectBottomPanelButtons()V
    .locals 3

    .prologue
    .line 1096
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1097
    .local v0, button:Landroid/widget/ImageButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1099
    .end local v0           #button:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public unselectPanelButtons(Ljava/util/Vector;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p1, buttons:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/widget/ImageButton;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1103
    .local v0, button:Landroid/widget/ImageButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1105
    .end local v0           #button:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V
    .locals 4
    .parameter "imageSmallFilter"
    .parameter "imageFilter"
    .parameter "setBorder"

    .prologue
    .line 1308
    if-nez p2, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_1

    .line 1313
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1315
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 1316
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1318
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 1319
    .local v1, oldPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1322
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 1324
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method

.method public useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 3
    .parameter "imageSmallFilter"
    .parameter "preset"

    .prologue
    .line 1287
    if-nez p2, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1294
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 1295
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1297
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1298
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1299
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1301
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 1303
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method
