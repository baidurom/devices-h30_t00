.class public Lcom/huawei/gallery3d/freeshare/FreeShareStopView;
.super Ljava/lang/Object;
.source "FreeShareStopView.java"

# interfaces
.implements Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;


# static fields
.field private static final MSG_FILE_MODIFY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FreeShare"


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

.field private mDeviceImage:Landroid/widget/ImageView;

.field private mDeviceName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mMainView:Landroid/view/View;

.field private mSendState:Landroid/widget/TextView;

.field mShareCompleted:Z

.field mShow:Z

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mStopHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 9
    .parameter "galleryActivity"

    .prologue
    const-wide/16 v7, 0x148

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    .line 39
    iput-boolean v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    .line 45
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 46
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getFreeShare()Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    .line 47
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-nez v3, :cond_0

    .line 118
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040029

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    .line 50
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const/16 v4, 0xc8

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const v4, 0x7f1000d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceImage:Landroid/widget/ImageView;

    .line 52
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const v4, 0x7f1000ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mSendState:Landroid/widget/TextView;

    .line 53
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const v4, 0x7f1000f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mStopHint:Landroid/widget/TextView;

    .line 55
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v3, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->addListener(Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;)V

    .line 56
    new-instance v3, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$1;

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$1;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHandler:Landroid/os/Handler;

    .line 70
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    new-instance v4, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$2;

    invoke-direct {v4, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$2;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const v4, 0x7f1000df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v3, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$3;

    invoke-direct {v3, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$3;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const v4, 0x7f1000f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 86
    .local v1, okButton:Landroid/widget/Button;
    new-instance v3, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;

    invoke-direct {v3, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f050006

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShowAnimation:Landroid/view/animation/Animation;

    .line 98
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f050004

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHideAnimation:Landroid/view/animation/Animation;

    .line 99
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$5;

    invoke-direct {v4, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$5;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 114
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v3, v3, Lcom/android/gallery3d/app/Gallery;

    if-eqz v3, :cond_1

    const v3, 0x7f1000fb

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 116
    .local v2, viewGroup:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 114
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    const v3, 0x7f100025

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->updateView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method private updateView(Z)V
    .locals 9
    .parameter "isShow"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getFileNum()I

    move-result v0

    .line 147
    .local v0, fileNum:I
    if-lez v0, :cond_0

    .line 148
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110009

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, stateString:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mSendState:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v2           #stateString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0d03bc

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, hintString:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mStopHint:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void

    .line 152
    .end local v1           #hintString:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mSendState:Landroid/widget/TextView;

    const v4, 0x7f0d03b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mSendState:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_1
    iput-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    .line 140
    iput-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShareCompleted:Z

    .line 141
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    .line 184
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    instance-of v1, v1, Lcom/android/gallery3d/app/Gallery;

    if-eqz v1, :cond_2

    const v1, 0x7f1000fb

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    .local v0, viewGroup:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v1, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->removeListener(Lcom/huawei/gallery3d/freeshare/FreeShareAdapter$Listener;)V

    goto :goto_0

    .line 184
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    const v1, 0x7f100025

    goto :goto_1
.end method

.method public onDeviceChange()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onDiscoverFinished()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShareCompleted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 168
    .local v0, height:I
    int-to-float v2, v0

    const/high16 v3, 0x4190

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 169
    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->hasTargetDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 132
    :goto_0
    return v1

    .line 125
    :cond_1
    iput-boolean v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShow:Z

    .line 126
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getFileNum()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShareCompleted:Z

    .line 127
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getTargetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceName:Ljava/lang/String;

    .line 128
    invoke-direct {p0, v2}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->updateView(Z)V

    .line 129
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    invoke-virtual {p0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->onLayout()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 126
    goto :goto_1
.end method
