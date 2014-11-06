.class public Lcom/android/hwcamera/ui/ColorEffect;
.super Ljava/lang/Object;
.source "ColorEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;,
        Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;,
        Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;,
        Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;,
        Lcom/android/hwcamera/ui/ColorEffect$DownToUpAnimationListner;,
        Lcom/android/hwcamera/ui/ColorEffect$MainHandler;
    }
.end annotation


# static fields
.field private static final COLOR_EFFECT_IMAGE:Ljava/lang/String; = "radio_image"

.field private static final COLOR_EFFECT_SELECTED:Ljava/lang/String; = "radio_selected"

.field private static final COLOR_EFFECT_SELECTED_RESID:I = 0x7f0200a6

.field private static final COLOR_EFFECT_TITLE:Ljava/lang/String; = "radio_title"

.field private static final CONTENT_TRANS_DISTANCE:I = 0xf

.field private static final CONTENT_TRANS_TIME:I = 0xe6

.field private static final DEAULT_ANIMATION_DUAL:I = 0x190

.field private static final HIDEN_HEIGHT:I = 0x1e

.field private static final HIDE_DELAYED_TIME:I = 0x2710

.field private static final HIDE_MESSAGE:I = 0x1

.field public static final NONE:Ljava/lang/String; = "none"

.field private static final TAB_TRANS_DISTANCE:I = 0xa

.field private static final TAB_TRANS_TIME:I = 0xa0


# instance fields
.field private colorEffectEntries:[Ljava/lang/String;

.field private colorEffectEntryValues:[Ljava/lang/String;

.field private colorEffectIcons:[I

.field private colorEffectLargeIcons:[I

.field private hasColorEffect:Z

.field private isEnable:Z

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mColorEffectContent:Landroid/view/View;

.field private mColorEffectLayout:Landroid/view/ViewGroup;

.field private mCurrentColorEffect:Ljava/lang/String;

.field private mDownToUpAnimationListener:Lcom/android/hwcamera/ui/ColorEffect$DownToUpAnimationListner;

.field private final mHandler:Landroid/os/Handler;

.field private mHideAndExtendButton:Landroid/view/View;

.field private mHideAndExtendLayout:Landroid/view/View;

.field private mItemSelected:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mOrientation:I

.field private mSupportedColorEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpToDownAnimationListner:Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;Ljava/util/List;I)V
    .locals 5
    .parameter "activity"
    .parameter
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/CameraActivity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, supportedColorEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->hasColorEffect:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/hwcamera/ui/ColorEffect;->isEnable:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I

    .line 72
    new-instance v0, Lcom/android/hwcamera/ui/ColorEffect$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/hwcamera/ui/ColorEffect$MainHandler;-><init>(Lcom/android/hwcamera/ui/ColorEffect;Lcom/android/hwcamera/ui/ColorEffect$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getColorEffectLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100046

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    .line 81
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 82
    iput p3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I

    .line 83
    const v0, 0x7f090033

    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDrawableArray(ILandroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectIcons:[I

    .line 84
    const v0, 0x7f090034

    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDrawableArray(ILandroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectLargeIcons:[I

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectEntries:[Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectEntryValues:[Ljava/lang/String;

    .line 87
    invoke-direct {p0, p2}, Lcom/android/hwcamera/ui/ColorEffect;->filterUnsupportedColorEffects(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iput-boolean v2, p0, Lcom/android/hwcamera/ui/ColorEffect;->hasColorEffect:Z

    .line 90
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/ui/ColorEffect;->initListView(Ljava/util/List;Landroid/widget/ListView;)V

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/hwcamera/ui/ColorEffect$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/ColorEffect$1;-><init>(Lcom/android/hwcamera/ui/ColorEffect;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    new-instance v0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;

    invoke-direct {v0, p0, v4}, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;-><init>(Lcom/android/hwcamera/ui/ColorEffect;Lcom/android/hwcamera/ui/ColorEffect$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mUpToDownAnimationListner:Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;

    .line 99
    new-instance v0, Lcom/android/hwcamera/ui/ColorEffect$DownToUpAnimationListner;

    invoke-direct {v0, p0, v4}, Lcom/android/hwcamera/ui/ColorEffect$DownToUpAnimationListner;-><init>(Lcom/android/hwcamera/ui/ColorEffect;Lcom/android/hwcamera/ui/ColorEffect$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mDownToUpAnimationListener:Lcom/android/hwcamera/ui/ColorEffect$DownToUpAnimationListner;

    .line 100
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->initHideAndExtendLayout()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/ui/ColorEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->extendColorEffectContent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mItemSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/ui/ColorEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/ui/ColorEffect;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/ui/ColorEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/ui/ColorEffect;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/ColorEffect;->rotatateView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/ui/ColorEffect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->isEnable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/ui/ColorEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/ui/ColorEffect;ILandroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/ColorEffect;->changeRadioImg(ILandroid/widget/SimpleAdapter;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/hwcamera/ui/ColorEffect;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mCurrentColorEffect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/ui/ColorEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->hideColorEffectContent()V

    return-void
.end method

.method private changeRadioImg(ILandroid/widget/SimpleAdapter;)V
    .locals 5
    .parameter "pos"
    .parameter "adapter"

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v2

    .line 175
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 176
    invoke-virtual {p2, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 177
    .local v0, currentMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "radio_selected"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    if-ne v1, p1, :cond_0

    .line 179
    const-string v3, "radio_selected"

    const v4, 0x7f0200a6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0           #currentMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 184
    return-void
.end method

.method private extendColorEffectContent()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xa0

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 294
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isZoomming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 297
    .local v0, alphAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 299
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 304
    .local v2, transAnimation:Landroid/view/animation/Animation;
    :goto_1
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 305
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mUpToDownAnimationListner:Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 306
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 307
    .local v1, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 308
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 302
    .end local v1           #set:Landroid/view/animation/AnimationSet;
    .end local v2           #transAnimation:Landroid/view/animation/Animation;
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2       #transAnimation:Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method private filterUnsupportedColorEffects(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, supportedColorEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, effects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectEntryValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #effects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .restart local v0       #effects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;>;"
    :cond_0
    new-instance v2, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;

    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectIcons:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectLargeIcons:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectEntries:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/hwcamera/ui/ColorEffect;->colorEffectEntryValues:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-object v0
.end method

.method private getCurrentIndex()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, currValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v4

    .line 169
    :cond_1
    :goto_0
    return v1

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    .local v3, length:I
    const/4 v2, 0x0

    .line 165
    .local v2, item:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 166
    iget-object v5, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;
    check-cast v2, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;

    .line 167
    .restart local v2       #item:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v4

    .line 169
    goto :goto_0
.end method

.method private hideColorEffectContent()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xe6

    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 313
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 314
    .local v0, alphAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 316
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 321
    .local v2, transAnimation:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 322
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mDownToUpAnimationListener:Lcom/android/hwcamera/ui/ColorEffect$DownToUpAnimationListner;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 323
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    .local v1, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 325
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 326
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    return-void

    .line 319
    .end local v1           #set:Landroid/view/animation/AnimationSet;
    .end local v2           #transAnimation:Landroid/view/animation/Animation;
    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2       #transAnimation:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private hidehideColorEffectContentDelayed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 288
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    return-void
.end method

.method private initHideAndExtendLayout()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100042

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;

    .line 268
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d0199

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100044

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mItemSelected:Landroid/widget/TextView;

    .line 272
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mItemSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100043

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendButton:Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/ui/ColorEffect$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/ColorEffect$4;-><init>(Lcom/android/hwcamera/ui/ColorEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method private initListView(Ljava/util/List;Landroid/widget/ListView;)V
    .locals 9
    .parameter
    .parameter "listView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, effects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;>;"
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 117
    invoke-virtual {p2, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 118
    const/16 v1, 0x1e

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentColorEffect()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/hwcamera/ui/ColorEffect;->initListViewData(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 121
    .local v3, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;

    iget-object v2, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f040014

    new-array v5, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "radio_image"

    aput-object v6, v5, v1

    const-string v1, "radio_title"

    aput-object v1, v5, v7

    const/4 v1, 0x2

    const-string v6, "radio_selected"

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;-><init>(Lcom/android/hwcamera/ui/ColorEffect;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 122
    .local v0, mModeadpter:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 124
    new-instance v1, Lcom/android/hwcamera/ui/ColorEffect$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/hwcamera/ui/ColorEffect$2;-><init>(Lcom/android/hwcamera/ui/ColorEffect;Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    new-instance v1, Lcom/android/hwcamera/ui/ColorEffect$3;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/ColorEffect$3;-><init>(Lcom/android/hwcamera/ui/ColorEffect;)V

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 158
    return-void

    .line 121
    nop

    :array_0
    .array-data 0x4
        0x3et 0x0t 0x10t 0x7ft
        0x3ft 0x0t 0x10t 0x7ft
        0x40t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method private initListViewData(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter "currentColorEffect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, effects:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;

    .line 191
    .local v1, item:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "radio_image"

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->getIcon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v4, "radio_title"

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const-string v4, "radio_selected"

    const v5, 0x7f0200a6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1           #item:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v2
.end method

.method private rotatateView(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "orientation"

    .prologue
    .line 543
    const v1, 0x7f10003d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    .line 544
    .local v0, rotatable:Lcom/android/hwcamera/ui/Rotatable;
    iget v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 545
    return-void
.end method


# virtual methods
.method public getCurrentColorEffect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mCurrentColorEffect:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mCurrentColorEffect:Ljava/lang/String;

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->isEnable:Z

    .line 220
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->hasColorEffect:Z

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public hideContent()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->hideColorEffectContent()V

    .line 459
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .parameter "isInCameraApp"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->isEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->hasColorEffect:Z

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    if-eqz p1, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 533
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 540
    :cond_0
    return-void

    .line 534
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I

    if-eq v1, p1, :cond_0

    .line 535
    iput p1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I

    .line 536
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/hwcamera/ui/ColorEffect;->rotatateView(Landroid/view/View;I)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->isEnable:Z

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getColorEffectLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100046

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    .line 236
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mSupportedColorEffects:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/ui/ColorEffect;->initListView(Ljava/util/List;Landroid/widget/ListView;)V

    .line 238
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V

    .line 239
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->initHideAndExtendLayout()V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 10
    .parameter "isInCameraApp"

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0x8

    const/4 v5, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 423
    if-nez p1, :cond_0

    .line 424
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 452
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 428
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendButton:Landroid/view/View;

    const v5, 0x7f020108

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 434
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V

    .line 435
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mItemSelected:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 439
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v0, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 440
    .local v0, alphAnimation:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xe6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-static {v9}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v6, v6, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 447
    .local v3, transAnimation:Landroid/view/animation/Animation;
    :goto_2
    const-wide/16 v4, 0xe6

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 448
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 449
    .local v2, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 450
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 451
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 431
    .end local v0           #alphAnimation:Landroid/view/animation/Animation;
    .end local v2           #set:Landroid/view/animation/AnimationSet;
    .end local v3           #transAnimation:Landroid/view/animation/Animation;
    :cond_1
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 445
    .restart local v0       #alphAnimation:Landroid/view/animation/Animation;
    :cond_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-static {v9}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v3       #transAnimation:Landroid/view/animation/Animation;
    goto :goto_2
.end method
