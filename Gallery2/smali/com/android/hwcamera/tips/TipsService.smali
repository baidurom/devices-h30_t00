.class public Lcom/android/hwcamera/tips/TipsService;
.super Ljava/lang/Object;
.source "TipsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/tips/TipsService$Tip;,
        Lcom/android/hwcamera/tips/TipsService$Toast;
    }
.end annotation


# static fields
.field private static final FIRST_SHOW_TIPS_DELAY:J = 0x3e8L

.field private static final SHOW_TEXT_TIPS:I = 0x2

.field private static final SHOW_TOAST_TIPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final TIPS_MAGRIN:I = 0x0

.field public static final TIPS_TEXT:I = 0x1

.field public static final TIPS_TOAST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TIPS_WIDTH:I = 0x0

.field private static final TOAST_DURATION:I = 0x9c4


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowTipDelay:Z

.field private mOrientation:I

.field private mPausedOnScreenHint:Z

.field private mPausedToast:Z

.field private mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

.field private mShownTextTipView:Landroid/view/View;

.field private mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

.field private mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

.field private mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

.field private mToastContent:Landroid/widget/LinearLayout;

.field private mWattingTips:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/hwcamera/tips/TipsService$Tip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/tips/TipsService;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/hwcamera/tips/TipsService;->TIPS_MAGRIN:I

    .line 54
    const/16 v0, 0x13a

    invoke-static {v0}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 2
    .parameter "mActivity"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/tips/TipsService;->mOrientation:I

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mWattingTips:Ljava/util/Queue;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/tips/TipsService;->mIsShowTipDelay:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedToast:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedOnScreenHint:Z

    .line 63
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 64
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$1;

    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/tips/TipsService$1;-><init>(Lcom/android/hwcamera/tips/TipsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/tips/TipsService;Lcom/android/hwcamera/tips/TipsService$Tip;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/hwcamera/tips/TipsService;->showTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/hwcamera/tips/TipsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/hwcamera/tips/TipsService;->mIsShowTipDelay:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/tips/TipsService;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/tips/TipsService;Lcom/android/hwcamera/tips/TipsService$Tip;)Lcom/android/hwcamera/tips/TipsService$Tip;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/hwcamera/tips/TipsService;Lcom/android/hwcamera/tips/TipsService$Toast;)Lcom/android/hwcamera/tips/TipsService$Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/tips/TipsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/hwcamera/tips/TipsService;->showNextToast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/tips/TipsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 422
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 423
    iput-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    .line 424
    iput-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    .line 425
    iput-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    .line 427
    iput-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

    .line 429
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mWattingTips:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 430
    return-void
.end method

.method private deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter "rp"

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 220
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 221
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    return-void
.end method

.method private maketip(Lcom/android/hwcamera/tips/TipsService$Tip;)Landroid/view/View;
    .locals 5
    .parameter "tip"

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 207
    .local v0, inflate:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Lcom/android/hwcamera/tips/TipsService$Tip;->getTipsType()I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f040041

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, v:Landroid/view/View;
    const v3, 0x7f100063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/android/hwcamera/tips/TipsService$Tip;->getTipsResId()I

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {p1}, Lcom/android/hwcamera/tips/TipsService$Tip;->getTipsResId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    :goto_1
    return-object v2

    .line 207
    .end local v1           #tv:Landroid/widget/TextView;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    const v3, 0x7f040040

    goto :goto_0

    .line 212
    .restart local v1       #tv:Landroid/widget/TextView;
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Lcom/android/hwcamera/tips/TipsService$Tip;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private pausedOnScreenHint(Z)V
    .locals 2
    .parameter "paused"

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedOnScreenHint:Z

    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pausedToast(Z)V
    .locals 2
    .parameter "paused"

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedToast:Z

    .line 273
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/tips/TipsService$Toast;->setVisibility(Z)V

    .line 276
    :cond_0
    if-nez p1, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/hwcamera/tips/TipsService;->showNextToast()V

    .line 279
    :cond_1
    return-void

    .line 274
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 9
    .parameter "mOrientation"
    .parameter "animation"

    .prologue
    const v8, 0x7f10016e

    const/16 v7, 0xf

    const/16 v6, 0xe

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 109
    sget-object v1, Lcom/android/hwcamera/tips/TipsService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TipsService mOrientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, p1, v4}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    .line 114
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 117
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 118
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 126
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 127
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_MAGRIN:I

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 137
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 138
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_MAGRIN:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    add-int/lit8 v2, p1, 0x5a

    invoke-virtual {v1, v2, v4}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    .line 152
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 155
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 156
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-virtual {v0, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 159
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 164
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 165
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 167
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_MAGRIN:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 175
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->deleteRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 176
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    sget v1, Lcom/android/hwcamera/tips/TipsService;->TIPS_MAGRIN:I

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 152
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_4
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method private setTipsVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showNextToast()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mWattingTips:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-boolean v0, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedToast:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mWattingTips:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/tips/TipsService$Tip;

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    .line 314
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->showToastTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    goto :goto_0
.end method

.method private showTextTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V
    .locals 3
    .parameter "tip"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/tips/TipsService;->hideTextTip()V

    .line 300
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    .line 301
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->maketip(Lcom/android/hwcamera/tips/TipsService$Tip;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/android/hwcamera/tips/TipsService$Tip;->getTipsType()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mWattingTips:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-direct {p0}, Lcom/android/hwcamera/tips/TipsService;->showNextToast()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/tips/TipsService;->showTextTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    goto :goto_0
.end method

.method private showToastTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V
    .locals 4
    .parameter "tip"

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/tips/TipsService;->maketip(Lcom/android/hwcamera/tips/TipsService$Tip;)Landroid/view/View;

    move-result-object v1

    .line 320
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 321
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$Toast;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/tips/TipsService$Toast;-><init>(Lcom/android/hwcamera/tips/TipsService;Landroid/view/View;)V

    .line 323
    .local v0, toast:Lcom/android/hwcamera/tips/TipsService$Toast;
    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

    .line 324
    iget-object v2, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;

    invoke-virtual {v2}, Lcom/android/hwcamera/tips/TipsService$Toast;->show()V

    goto :goto_0
.end method

.method private shownTips()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->showTextTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    .line 194
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->showToastTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    goto :goto_0
.end method


# virtual methods
.method public hideTextTip()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mShownTextTip:Lcom/android/hwcamera/tips/TipsService$Tip;

    goto :goto_0
.end method

.method public init(Lcom/android/hwcamera/ui/RotateLayout;)V
    .locals 2
    .parameter "mTipslayout"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 230
    const v0, 0x7f100031

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    .line 231
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/tips/TipsService;->setOrientationIndicator(IZ)V

    .line 232
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public makeTip(II)V
    .locals 5
    .parameter "resId"
    .parameter "tipType"

    .prologue
    .line 256
    new-instance v1, Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {v1, p2, p1}, Lcom/android/hwcamera/tips/TipsService$Tip;-><init>(II)V

    .line 257
    .local v1, tip:Lcom/android/hwcamera/tips/TipsService$Tip;
    iget-object v3, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/hwcamera/tips/TipsService;->mIsShowTipDelay:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    :goto_1
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 259
    return-void

    .line 257
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 258
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public makeTipDelay(II)V
    .locals 1
    .parameter "resId"
    .parameter "tipType"

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/tips/TipsService;->mIsShowTipDelay:Z

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/tips/TipsService;->makeTip(II)V

    .line 269
    return-void
.end method

.method public makeTipImmediately(II)V
    .locals 1
    .parameter "resId"
    .parameter "tipType"

    .prologue
    .line 262
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {v0, p2, p1}, Lcom/android/hwcamera/tips/TipsService$Tip;-><init>(II)V

    .line 263
    .local v0, tip:Lcom/android/hwcamera/tips/TipsService$Tip;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->showTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    .line 264
    return-void
.end method

.method public makeTipImmediately(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "tipType"

    .prologue
    .line 433
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$Tip;

    invoke-direct {v0, p2, p1}, Lcom/android/hwcamera/tips/TipsService$Tip;-><init>(ILjava/lang/String;)V

    .line 434
    .local v0, tip:Lcom/android/hwcamera/tips/TipsService$Tip;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->showTip(Lcom/android/hwcamera/tips/TipsService$Tip;)V

    .line 435
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .parameter "isfull"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setVisibility(I)V

    .line 253
    :cond_0
    return-void

    .line 252
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 81
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/tips/TipsService;->mOrientation:I

    .line 83
    .local v0, orientationHistory:I
    invoke-static {p1, v0}, Lcom/android/hwcamera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/tips/TipsService;->mOrientation:I

    .line 84
    iget v1, p0, Lcom/android/hwcamera/tips/TipsService;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 85
    iget v1, p0, Lcom/android/hwcamera/tips/TipsService;->mOrientation:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/tips/TipsService;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/hwcamera/tips/TipsService;->reset()V

    .line 244
    return-void
.end method

.method public pauseAndHideTips()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->setTipsVisible(Z)V

    .line 91
    invoke-direct {p0, v1}, Lcom/android/hwcamera/tips/TipsService;->pausedOnScreenHint(Z)V

    .line 92
    invoke-direct {p0, v1}, Lcom/android/hwcamera/tips/TipsService;->pausedToast(Z)V

    .line 93
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/tips/TipsService;->mIsShowTipDelay:Z

    .line 413
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/hwcamera/tips/TipsService;->setViewMargin(IIII)V

    .line 414
    iput-boolean v1, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedToast:Z

    .line 415
    iput-boolean v1, p0, Lcom/android/hwcamera/tips/TipsService;->mPausedOnScreenHint:Z

    .line 417
    invoke-direct {p0}, Lcom/android/hwcamera/tips/TipsService;->clear()V

    .line 418
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/tips/TipsService;->setOrientationIndicator(IZ)V

    .line 249
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public resumeTips()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/tips/TipsService;->setTipsVisible(Z)V

    .line 97
    invoke-direct {p0, v1}, Lcom/android/hwcamera/tips/TipsService;->pausedOnScreenHint(Z)V

    .line 98
    invoke-direct {p0, v1}, Lcom/android/hwcamera/tips/TipsService;->pausedToast(Z)V

    .line 99
    return-void
.end method

.method public setTipsLayout(Lcom/android/hwcamera/ui/RotateLayout;)V
    .locals 2
    .parameter "mTipslayout"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService;->mTipslayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 236
    const v0, 0x7f100031

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    .line 237
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/tips/TipsService;->setOrientationIndicator(IZ)V

    .line 239
    invoke-direct {p0}, Lcom/android/hwcamera/tips/TipsService;->shownTips()V

    .line 240
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public setViewMargin(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 203
    return-void
.end method
