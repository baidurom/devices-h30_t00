.class public Lcom/huawei/gallery3d/freeshare/FreeShareView;
.super Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;
.source "FreeShareView.java"

# interfaces
.implements Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x148

.field private static final HEIGHT_SCALE_LAND:F = 0.35f

.field private static final HEIGHT_SCALE_PORT:F = 0.39f

.field private static final KEY_FREESHARE_HELP:Ljava/lang/String; = "key-freeshare-help"

.field private static final MSG_CANCEL_SEARCH:I = 0x4

.field private static final MSG_START_HIDE:I = 0x2

.field private static final MSG_START_SEARCH:I = 0x3

.field private static final MSG_UPDATE_DEVICE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final PLACE_HOLDER_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SENSITIVITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FreeShare"

.field private static final TYPE_BLUETOOTH:I = 0x1

.field private static final WIDTH_SCALE_LAND:F = 0.35f

.field private static final WIDTH_SCALE_PORT:F = 0.67f


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDataAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;

.field private mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFlingOutAnimation:Landroid/view/animation/Animation;

.field private mFlingOutHideAnimation:Landroid/animation/ValueAnimator;

.field private mFlingUpAnimation:Landroid/animation/ValueAnimator;

.field private mFlyoutAnimation:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHelpDeviceView:Landroid/widget/TextView;

.field private mHelpShown:Z

.field private mHelpView:Landroid/view/View;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsHelpShow:Z

.field private mIsMenuShow:Z

.field private mIsSearch:Z

.field private mListView:Landroid/widget/ListView;

.field private mMainView:Landroid/view/View;

.field private mMenuView:Landroid/view/View;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mPlaceHolderImage:Landroid/graphics/Bitmap;

.field private mSaveInfo:[Ljava/lang/String;

.field private mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchView:Landroid/widget/ImageView;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mStartButton:Landroid/widget/Button;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 71
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->SENSITIVITY:I

    .line 72
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->PLACE_HOLDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 5
    .parameter "galleryActivity"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;-><init>()V

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;

    .line 114
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object v4, v3, v1

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;

    .line 120
    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 121
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 122
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getFreeShare()Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    .line 123
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "key-freeshare-help"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpShown:Z

    .line 125
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeViews()V

    .line 126
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeData()V

    .line 127
    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    .line 151
    return-void

    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->updateDeviceInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->startSearch()V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->SENSITIVITY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpShown:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpShown:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->cancelSearch()V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsSearch:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlyoutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelSearch()V
    .locals 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsSearch:Z

    .line 641
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->cancelDiscover()V

    .line 642
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 643
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 645
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 646
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    const v1, 0x7f0d03ab

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private flyShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->hasTargetDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    :goto_0
    return v1

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 563
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 564
    .local v0, imageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 565
    iget v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 566
    iget v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 567
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 569
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutHideAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 571
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 701
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mPlaceHolderImage:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 702
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getScale()F
    .locals 7

    .prologue
    .line 724
    const/high16 v3, 0x3f80

    .line 725
    .local v3, wFactor:F
    const/high16 v0, 0x3f80

    .line 727
    .local v0, hFactor:F
    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 729
    .local v2, s:F
    const/high16 v4, 0x4000

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 730
    .local v1, result:F
    const-string v4, "FreeShare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v1
.end method

.method private initializeData()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 203
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->addListener(Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;)V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;

    .line 206
    new-instance v0, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDataAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;

    .line 207
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDataAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutAnimation:Landroid/view/animation/Animation;

    .line 278
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 308
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutHideAnimation:Landroid/animation/ValueAnimator;

    .line 309
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutHideAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingOutHideAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$5;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$5;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingUpAnimation:Landroid/animation/ValueAnimator;

    .line 320
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingUpAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 322
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 431
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 432
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlyoutAnimation:Landroid/view/animation/Animation;

    .line 433
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mShowAnimation:Landroid/view/animation/Animation;

    .line 434
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHideAnimation:Landroid/view/animation/Animation;

    .line 435
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$8;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$8;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 448
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$10;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$10;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 468
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$11;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$11;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mStartButton:Landroid/widget/Button;

    new-instance v1, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    return-void

    .line 308
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 319
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 154
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    .line 155
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    .line 156
    const-string v2, "FreeShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mPlaceHolderImage:Landroid/graphics/Bitmap;

    .line 159
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mPlaceHolderImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    .local v0, canvas:Landroid/graphics/Canvas;
    sget v2, Lcom/huawei/gallery3d/freeshare/FreeShareView;->PLACE_HOLDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 162
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040028

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    .line 165
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    .line 166
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 168
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    if-lt v2, v3, :cond_0

    .line 171
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    .line 179
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceName:Landroid/widget/TextView;

    .line 180
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchView:Landroid/widget/ImageView;

    .line 182
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchView:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 184
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mListView:Landroid/widget/ListView;

    .line 185
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    .line 187
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    const v3, 0x7f1000e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    .line 188
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    const v3, 0x7f1000e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpDeviceView:Landroid/widget/TextView;

    .line 189
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpDeviceView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    const v3, 0x7f1000ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;

    .line 191
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    const v3, 0x7f1000e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCancelButton:Landroid/widget/Button;

    .line 192
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    const v3, 0x7f1000ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mStartButton:Landroid/widget/Button;

    .line 194
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v2, v2, Lcom/android/gallery3d/app/Gallery;

    if-eqz v2, :cond_1

    const v2, 0x7f1000fb

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    .local v1, viewGroup:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iput-boolean v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    .line 200
    return-void

    .line 173
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 194
    :cond_1
    const v2, 0x7f100025

    goto :goto_1
.end method

.method private startSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    if-nez v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsSearch:Z

    .line 630
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->discover()Z

    .line 631
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 633
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 634
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 635
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    const v1, 0x7f0d03ac

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private updateDeviceInfo()V
    .locals 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 652
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    const-string v0, "FreeShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDataAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private updateMedia()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 658
    iget-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v6, :cond_1

    .line 659
    const-string v5, "FreeShare"

    const-string v6, "model is dirty, cannot prepare media!"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    :goto_0
    return v4

    .line 662
    :cond_1
    const/4 v0, 0x0

    .line 663
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 664
    .local v3, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 665
    .local v1, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    const/4 v2, 0x0

    .line 666
    .local v2, rotation:I
    if-eqz v1, :cond_2

    .line 667
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    .line 670
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 672
    iget-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 673
    iget-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 675
    :cond_3
    if-eqz v3, :cond_0

    instance-of v6, v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v6, :cond_0

    .line 676
    check-cast v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    .end local v3           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 682
    :cond_4
    const-string v4, "FreeShare"

    const-string v6, "Cannot decode bitmap!"

    invoke-static {v4, v6}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v4, "FreeShare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getImageWidth()I

    move-result v4

    iput v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    .line 685
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getImageHeight()I

    move-result v4

    iput v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I

    .line 686
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    :goto_1
    invoke-static {v0, v2, v5}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 696
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v4, v5

    .line 697
    goto/16 :goto_0

    .line 688
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    .line 690
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I

    .line 691
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->updateWidthAndHeight()V

    goto :goto_1
.end method

.method private updateWidthAndHeight()V
    .locals 4

    .prologue
    .line 706
    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    if-eqz v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 711
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 712
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 713
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 714
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mWidth:I

    .line 715
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FreeShare"

    const-string v3, "updataWidthAndHeight "

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iput-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z

    .line 549
    iput-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    .line 550
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 552
    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 8

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x28

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 587
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    .line 588
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    .line 589
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    :goto_0
    return-void

    .line 590
    :cond_0
    iget v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    if-lt v1, v2, :cond_2

    .line 591
    iget-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 593
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 594
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCancelButton:Landroid/widget/Button;

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 596
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mStartButton:Landroid/widget/Button;

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 603
    :goto_1
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 604
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    int-to-float v2, v2

    const v3, 0x3ec7ae14

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 605
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    int-to-float v2, v2

    const v3, 0x3f2b851f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 623
    :goto_2
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 598
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 599
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 600
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    goto :goto_1

    .line 607
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z

    if-eqz v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 609
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 610
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCancelButton:Landroid/widget/Button;

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 612
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mStartButton:Landroid/widget/Button;

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 619
    :goto_3
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 620
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I

    int-to-float v2, v2

    const v3, 0x3eb33333

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 621
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I

    int-to-float v2, v2

    const v3, 0x3eb33333

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 614
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 615
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 616
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSearchButton:Landroid/widget/Button;

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 576
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v1, v1, Lcom/android/gallery3d/app/Gallery;

    if-eqz v1, :cond_0

    const v1, 0x7f1000fb

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 578
    .local v0, viewGroup:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 579
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->removeListener(Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;)V

    .line 581
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 583
    return-void

    .line 576
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    const v1, 0x7f100025

    goto :goto_0
.end method

.method public onDeviceChange()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 796
    const-string v0, "FreeShare"

    const-string v1, "onDeviceChange"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 799
    return-void
.end method

.method public onDiscoverFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 788
    const-string v0, "FreeShare"

    const-string v1, "onDiscoverFinished"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 791
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 792
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/app/PhotoPage$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 512
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->updateMedia()Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->flyShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    .line 519
    .local v0, show:Z
    if-nez v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpShown:Z

    if-nez v1, :cond_2

    .line 522
    iput-boolean v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z

    .line 523
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 538
    :goto_1
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 542
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlingUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 527
    :cond_2
    iput-boolean v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z

    .line 528
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
