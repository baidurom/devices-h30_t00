.class public Lcom/android/hwcamera/ui/ZoomBar;
.super Ljava/lang/Object;
.source "ZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ui/ZoomBar$MainHandler;
    }
.end annotation


# static fields
.field private static final DEAULT_ANIMATION_DUAL:I = 0xfa0

.field private static final MOVE_STEP_MULTIPLE:I = 0x3

.field private static final PERFORM_SMOOTH_ZOOM:I = 0x1


# instance fields
.field isSmoothZooming:Z

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mAlphAnimation:Landroid/view/animation/Animation;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentProgress:I

.field private mDesIndex:I

.field private mIsTracking:Z

.field private mMainHandler:Lcom/android/hwcamera/ui/ZoomBar$MainHandler;

.field private mMaxZoom:I

.field private mMinZoom:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarLength:I

.field private mStepValue:F

.field private mZoomControlLayout:Landroid/view/ViewGroup;

.field private mZoomInView:Lcom/android/hwcamera/ui/RotateImageView;

.field private mZoomOutView:Lcom/android/hwcamera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;I)V
    .locals 4
    .parameter "activity"
    .parameter "maxZoom"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomInView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 21
    iput-object v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomOutView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 24
    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 25
    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBarLength:I

    .line 26
    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMaxZoom:I

    .line 27
    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMinZoom:I

    .line 28
    iput v3, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    .line 32
    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    .line 33
    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    .line 34
    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming:Z

    .line 36
    new-instance v0, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;-><init>(Lcom/android/hwcamera/ui/ZoomBar;Lcom/android/hwcamera/ui/ZoomBar$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMainHandler:Lcom/android/hwcamera/ui/ZoomBar$MainHandler;

    .line 45
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAlphAnimation:Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Lcom/android/hwcamera/ui/ZoomBar$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/ZoomBar$1;-><init>(Lcom/android/hwcamera/ui/ZoomBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 82
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ZoomBar;->initLayout()V

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/ui/ZoomBar;->setEventListener(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/ui/ZoomBar;->setZoomMax(I)V

    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAlphAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAlphAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/hwcamera/ui/ZoomBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/ui/ZoomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ZoomBar;->changeZoomIndexSmoothly()V

    return-void
.end method

.method private cancleFade()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 231
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAlphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 232
    return-void
.end method

.method private changeZoomIndexSmoothly()V
    .locals 4

    .prologue
    const/high16 v3, 0x4040

    const/4 v2, 0x1

    .line 127
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    if-ge v0, v1, :cond_1

    .line 128
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 129
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    if-le v0, v1, :cond_0

    .line 130
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    if-ne v0, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMainHandler:Lcom/android/hwcamera/ui/ZoomBar$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;->removeMessages(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->fade()V

    .line 146
    :goto_1
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    if-le v0, v1, :cond_0

    .line 133
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 134
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    if-ge v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMainHandler:Lcom/android/hwcamera/ui/ZoomBar$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMainHandler:Lcom/android/hwcamera/ui/ZoomBar$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/ZoomBar$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getZoomControlLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomInView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    const v1, 0x7f10021f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomOutView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 95
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 96
    return-void
.end method

.method private progressToZoom(I)I
    .locals 3
    .parameter "progress"

    .prologue
    .line 153
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMinZoom:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMaxZoom:I

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMinZoom:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBarLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private zoomToProgress(I)I
    .locals 3
    .parameter "zoomValue"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMinZoom:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBarLength:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMaxZoom:I

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMinZoom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public fade()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAlphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mAlphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    .line 227
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ZoomBar;->cancleFade()V

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    .line 116
    return-void
.end method

.method public isSmoothZooming()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming:Z

    return v0
.end method

.method public isZooming()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)I
    .locals 3
    .parameter "v"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->show()V

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->fade()V

    .line 218
    const/4 v0, 0x0

    return v0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBarLength:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBarLength:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x7f10021f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)I
    .locals 2
    .parameter "arg0"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->show()V

    .line 161
    if-eqz p3, :cond_0

    .line 162
    iput p2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 166
    iget p2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 179
    .end local p2
    :goto_0
    return p2

    .line 168
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 169
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mDesIndex:I

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 179
    :goto_1
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/ZoomBar;->progressToZoom(I)I

    move-result p2

    goto :goto_0

    .line 171
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    if-eqz v0, :cond_3

    .line 172
    iput p2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    goto :goto_0

    .line 175
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming:Z

    .line 176
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ZoomBar;->changeZoomIndexSmoothly()V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->show()V

    .line 191
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->fade()V

    .line 195
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 237
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/ZoomBar;->show()V

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 239
    iput-boolean v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iput-boolean v2, p0, Lcom/android/hwcamera/ui/ZoomBar;->mIsTracking:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->isSmoothZooming:Z

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f100221
        :pswitch_0
    .end packed-switch
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ZoomBar;->initLayout()V

    .line 65
    iget v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMaxZoom:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/ZoomBar;->setZoomMax(I)V

    .line 66
    return-void
.end method

.method public setEventListener(Ljava/lang/Object;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    move-object v0, p1

    check-cast v0, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 40
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    iget-object v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomInView:Lcom/android/hwcamera/ui/RotateImageView;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomOutView:Lcom/android/hwcamera/ui/RotateImageView;

    check-cast p1, Landroid/view/View$OnClickListener;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .parameter "zoomValue"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/ZoomBar;->zoomToProgress(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    .line 184
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .parameter "maxValue"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMaxZoom:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mMinZoom:I

    .line 101
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mStepValue:F

    .line 103
    iput p1, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBarLength:I

    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 105
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/hwcamera/ui/ZoomBar;->cancleFade()V

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 122
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method
