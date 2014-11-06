.class public Lcom/android/hwcamera/ui/BeautyEffect;
.super Ljava/lang/Object;
.source "BeautyEffect.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DEAULT_ANIMATION_DUAL:I = 0x190


# instance fields
.field private alphaState:Lcom/android/hwcamera/ui/AlphaState;

.field private isEnable:Z

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarLayout:Landroid/view/ViewGroup;

.field private mTip:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    .line 32
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getBeautySeekBarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    .line 36
    iput-object p1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/BeautyEffect;->getCurrentProcess()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/ui/BeautyEffect;->generateTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/BeautyEffect;->getCurrentProcess()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/BeautyEffect;->getCurrentProcess()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/BeautyEffect;->resetTipPosition(I)V

    .line 41
    new-instance v0, Lcom/android/hwcamera/ui/AlphaState;

    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/ui/AlphaState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    .line 42
    return-void
.end method

.method private generateTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "currentProcess"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetTipPosition(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 55
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCurrentProcess()I
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v2}, Lcom/android/hwcamera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    .line 119
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 120
    .local v0, defaultlevel:I
    if-nez v1, :cond_0

    .line 121
    .end local v0           #defaultlevel:I
    :goto_0
    return v0

    .restart local v0       #defaultlevel:I
    :cond_0
    const-string v2, "pref_camera_beauty"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/AlphaState;->cancel()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .parameter "isInCameraApp"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/AlphaState;->setState(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "arg0"
    .parameter "progress"
    .parameter "arg2"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->collapseCameraControls()V

    .line 48
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setBeautyProgress(I)V

    .line 49
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/BeautyEffect;->resetTipPosition(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->collapseCameraControls()V

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/AlphaState;->setState(I)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 70
    iget-boolean v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/hwcamera/ui/BeautyEffect;->generateTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/AlphaState;->setState(I)V

    .line 75
    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v0

    .line 76
    .local v0, mSharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "pref_camera_beauty"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->persistIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->isEnable:Z

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getBeautySeekBarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTip:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/BeautyEffect;->getCurrentProcess()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/ui/BeautyEffect;->generateTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/BeautyEffect;->getCurrentProcess()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/BeautyEffect;->getCurrentProcess()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/BeautyEffect;->resetTipPosition(I)V

    .line 114
    iget-object v0, p0, Lcom/android/hwcamera/ui/BeautyEffect;->alphaState:Lcom/android/hwcamera/ui/AlphaState;

    iget-object v1, p0, Lcom/android/hwcamera/ui/BeautyEffect;->mSeekBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/AlphaState;->setView(Landroid/view/View;)V

    goto :goto_0
.end method
