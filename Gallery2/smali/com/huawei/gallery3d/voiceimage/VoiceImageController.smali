.class public Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
.super Ljava/lang/Object;
.source "VoiceImageController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0x1f4

.field private static final PROGRESS_CHECK_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "VoiceImage_Controller"


# instance fields
.field private mBottomMargin:I

.field private mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerVisible:Z

.field private mContext:Landroid/content/Context;

.field private mCountDownText:Landroid/widget/TextView;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mIconHeight:I

.field private mIsPlaying:Z

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPath:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProgressChecker:Ljava/lang/Runnable;

.field private mStartAnimation:Ljava/lang/Runnable;

.field private mStartFadeIn:Ljava/lang/Runnable;

.field private mVoiceImage:Landroid/widget/ImageView;

.field private mVoiceOffset:J

.field private mVoicePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 7
    .parameter "callback"
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v5, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    .line 69
    iput-boolean v5, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainerVisible:Z

    .line 74
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPath:Ljava/lang/String;

    .line 77
    new-instance v3, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$1;

    invoke-direct {v3, p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$1;-><init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mStartAnimation:Ljava/lang/Runnable;

    .line 85
    new-instance v3, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;

    invoke-direct {v3, p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;-><init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mStartFadeIn:Ljava/lang/Runnable;

    .line 93
    new-instance v3, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;

    invoke-direct {v3, p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;-><init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mProgressChecker:Ljava/lang/Runnable;

    .line 105
    iput-object p2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContext:Landroid/content/Context;

    .line 106
    iput-object p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    .line 107
    iput-object p3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 110
    .local v2, r:Landroid/content/res/Resources;
    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 111
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040084

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    .line 112
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    const v4, 0x7f10021c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceImage:Landroid/widget/ImageView;

    .line 113
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    const v4, 0x7f10021d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCountDownText:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 115
    const v3, 0x7f0b0104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIconHeight:I

    .line 116
    const v3, 0x7f0b0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mBottomMargin:I

    .line 118
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    .line 120
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;

    invoke-direct {v4, p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;-><init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 132
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoicePath:Ljava/lang/String;

    .line 134
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 135
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mFadeInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->onConfigChanged(II)V

    .line 145
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v3}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->refreshIconWhenReady()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->startAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->updateVoicePlayer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mFadeInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stopAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->setDuration()V

    return-void
.end method

.method private play()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x1

    .line 239
    iget-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->playVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iput-boolean v2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    .line 242
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceImage:Landroid/widget/ImageView;

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    .line 248
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    invoke-direct {p0, v2}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stopVoice(Z)V

    .line 250
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->onTapeError()V

    goto :goto_0
.end method

.method private playPause()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stop(Z)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->play()V

    goto :goto_0
.end method

.method private playVoice()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 262
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    const/4 v1, 0x1

    .line 276
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 276
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 270
    :catch_1
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 272
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method private setDuration()V
    .locals 6

    .prologue
    .line 171
    iget-object v2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    div-int/lit16 v1, v2, 0x3e8

    .line 172
    .local v1, iDuration:I
    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 173
    const/16 v1, 0xa

    .line 175
    :cond_0
    const-string v2, "%1d\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, duration:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCountDownText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method private setProgress()I
    .locals 7

    .prologue
    .line 156
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    sub-int v1, v3, v4

    .line 158
    .local v1, position:I
    add-int/lit16 v3, v1, 0x1f4

    div-int/lit16 v2, v3, 0x3e8

    .line 159
    .local v2, showValue:I
    if-lez v2, :cond_1

    .line 160
    const-string v3, "%1d\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, countDown:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCountDownText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .end local v0           #countDown:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    if-gez v2, :cond_0

    .line 163
    const-string v3, "VoiceImage_Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong duration left is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 297
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 298
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 302
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceImage:Landroid/widget/ImageView;

    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    return-void
.end method

.method private stopVoice(Z)V
    .locals 3
    .parameter "resetText"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 282
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 283
    :cond_0
    if-eqz p1, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->setDuration()V

    .line 287
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 288
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->updateVoicePlayer()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateVoicePlayer()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 320
    const/4 v9, 0x0

    .line 322
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 329
    .local v7, fd:Ljava/io/FileDescriptor;
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoicePath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoicePath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v8, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 339
    .end local v8           #file:Ljava/io/File;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x14

    sub-long v2, v0, v4

    .line 340
    .local v2, offset:J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    .line 355
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    move v0, v11

    .line 359
    .end local v2           #offset:J
    .end local v7           #fd:Ljava/io/FileDescriptor;
    :goto_2
    return v0

    .line 325
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 346
    :catch_0
    move-exception v6

    .line 347
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :goto_3
    move v0, v11

    .line 359
    goto :goto_2

    .line 332
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    :cond_1
    if-eqz v7, :cond_2

    .line 333
    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 355
    :cond_2
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    move v0, v11

    goto :goto_2

    .line 342
    .restart local v2       #offset:J
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceOffset:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 344
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 345
    const/4 v0, 0x1

    .line 355
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    goto :goto_2

    .line 348
    .end local v2           #offset:J
    .end local v7           #fd:Ljava/io/FileDescriptor;
    :catch_1
    move-exception v6

    .line 349
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 355
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    goto :goto_3

    .line 350
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 351
    .local v6, e:Ljava/lang/SecurityException;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    goto :goto_3

    .line 352
    .end local v6           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 353
    .local v6, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 355
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    goto :goto_3

    .line 355
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 356
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->closeParcelFileDescriptor()V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->playPause()V

    .line 317
    return-void
.end method

.method public onConfigChanged(II)V
    .locals 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 181
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    mul-int/lit8 v3, p1, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int v3, p2, v3

    div-int/lit8 v1, v3, 0x2

    .line 183
    .local v1, bottomSpace:I
    iget v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIconHeight:I

    if-le v1, v3, :cond_1

    .line 184
    iget v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIconHeight:I

    sub-int v3, v1, v3

    div-int/lit8 v0, v3, 0x2

    .line 185
    .local v0, bottomMargin:I
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 186
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0           #bottomMargin:I
    :goto_0
    return-void

    .line 191
    .restart local v0       #bottomMargin:I
    :cond_0
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mStartFadeIn:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 195
    .end local v0           #bottomMargin:I
    :cond_1
    iget v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mBottomMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 196
    iget-object v3, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 308
    sub-int v1, p5, p9

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 309
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 310
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v1, v2}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->onConfigChanged(II)V

    .line 312
    :cond_0
    return-void

    .line 308
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh(Ljava/lang/String;J)V
    .locals 1
    .parameter "voicePath"
    .parameter "voiceoffset"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->refresh(Ljava/lang/String;JZ)V

    .line 202
    return-void
.end method

.method public refresh(Ljava/lang/String;JZ)V
    .locals 5
    .parameter "voicePath"
    .parameter "voiceoffset"
    .parameter "forceFresh"

    .prologue
    const-wide/16 v3, 0x0

    .line 205
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->needIcon()Z

    move-result v0

    .line 206
    .local v0, visible:Z
    iget-boolean v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainerVisible:Z

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    iput-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainerVisible:Z

    .line 211
    :cond_0
    if-nez p4, :cond_4

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    cmp-long v1, p2, v3

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v2}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    :cond_2
    :goto_1
    return-void

    .line 207
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 215
    :cond_4
    iput-object p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoicePath:Ljava/lang/String;

    .line 216
    iput-wide p2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mVoiceOffset:J

    .line 218
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mCallback:Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;

    invoke-interface {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mPath:Ljava/lang/String;

    .line 221
    cmp-long v1, p2, v3

    if-eqz v1, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->updateVoicePlayer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->setDuration()V

    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "needReset"

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z

    .line 257
    invoke-direct {p0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stopAnimation()V

    .line 258
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stopVoice(Z)V

    goto :goto_0
.end method
