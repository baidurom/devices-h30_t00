.class public Lcom/android/hwcamera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/android/hwcamera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutResourceID:I

.field private mRotateDialog:Lcom/android/hwcamera/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a"
    .parameter "layoutResource"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/hwcamera/RotateDialogController;->mActivity:Landroid/app/Activity;

    .line 54
    iput p2, p0, Lcom/android/hwcamera/RotateDialogController;->mLayoutResourceID:I

    .line 55
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    .line 58
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/hwcamera/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, v:Landroid/view/View;
    const v3, 0x7f1001f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 63
    const v3, 0x7f1001fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/ui/RotateLayout;

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialog:Lcom/android/hwcamera/ui/RotateLayout;

    .line 64
    const v3, 0x7f1001fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 65
    const v3, 0x7f1001ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 66
    const v3, 0x7f1001fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 67
    const v3, 0x7f1001fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 68
    const v3, 0x7f1001fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f100201

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f100200

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 72
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 74
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 76
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    iget-object v3, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/hwcamera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layoutRoot:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/hwcamera/RotateDialogController;->fadeOutDialog()V

    .line 112
    :cond_0
    return-void
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 90
    invoke-direct {p0}, Lcom/android/hwcamera/RotateDialogController;->inflateDialogLayout()V

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/hwcamera/RotateDialogController;->inflateDialogLayout()V

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialog:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    .line 87
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "r1"
    .parameter "button2Text"
    .parameter "r2"

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/hwcamera/RotateDialogController;->resetRotateDialog()V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    if-eqz p3, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    new-instance v1, Lcom/android/hwcamera/RotateDialogController$1;

    invoke-direct {v1, p0, p4}, Lcom/android/hwcamera/RotateDialogController$1;-><init>(Lcom/android/hwcamera/RotateDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_1
    if-eqz p5, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    new-instance v1, Lcom/android/hwcamera/RotateDialogController$2;

    invoke-direct {v1, p0, p6}, Lcom/android/hwcamera/RotateDialogController$2;-><init>(Lcom/android/hwcamera/RotateDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/RotateDialogController;->fadeInDialog()V

    .line 153
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/hwcamera/RotateDialogController;->resetRotateDialog()V

    .line 158
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/hwcamera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/hwcamera/RotateDialogController;->fadeInDialog()V

    .line 162
    return-void
.end method
