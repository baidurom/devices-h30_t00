.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Lcom/android/gallery3d/app/CommonControllerOverlay;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private SENSITIVITY:I

.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

.field private mDownX:F

.field private mHoldingDown:Z

.field private final startHidingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->SENSITIVITY:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    .line 53
    sget-boolean v0, Lcom/huawei/gallery3d/dolby/Dolby;->DOLBY_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/huawei/gallery3d/dolby/Dolby;->newInstance(Landroid/content/Context;)Lcom/huawei/gallery3d/dolby/Dolby;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    .line 55
    const-string v0, "Gallery2:Dolby"

    const-string v1, "add dolbyView"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/dolby/Dolby;->setListener(Lcom/huawei/gallery3d/dolby/Dolby$Listener;)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$2;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 74
    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    invoke-virtual {v0, v2}, Lcom/huawei/gallery3d/dolby/Dolby;->setAnimation(Landroid/view/animation/Animation;)V

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->getStreamingcfg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 171
    :cond_1
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_0
    return-void
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startHiding()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 121
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->getStreamingcfg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 137
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTimeBar(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 83
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 88
    .local v0, wasHidden:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 89
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/dolby/Dolby;->setVisibility(I)V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->hide()V

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 96
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 186
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 247
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onLayout(ZIIII)V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    if-eqz v0, :cond_0

    .line 249
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getWinInsets()Landroid/graphics/Rect;

    move-result-object v6

    .line 250
    .local v6, windowInsets:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/gallery3d/dolby/Dolby;->reLayout(IIIII)V

    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, p5, p3

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, p4, p2

    iget v4, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    invoke-virtual {v4}, Lcom/huawei/gallery3d/dolby/Dolby;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/app/TimeBar;->layout(IIII)V

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TimeBar;->requestLayout()V

    .line 263
    .end local v6           #windowInsets:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public onScrubbingEnd(III)V
    .locals 0
    .parameter "time"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingEnd(III)V

    .line 294
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 287
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingMove(I)V

    .line 288
    return-void
.end method

.method public onScrubbingStart()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 281
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onScrubbingStart()V

    .line 282
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v3

    .line 202
    :cond_1
    iget-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHoldingDown:Z

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 209
    :cond_3
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHoldingDown:Z

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    goto :goto_0

    .line 213
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHoldingDown:Z

    if-nez v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 214
    :cond_4
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mHoldingDown:Z

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 216
    .local v2, upX:F
    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDownX:F

    sub-float v0, v2, v5

    .line 217
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->SENSITIVITY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 218
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 219
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v5, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v5, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v4, v5, :cond_5

    .line 226
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 228
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v6, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v5, v6, :cond_0

    .line 230
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v5, :cond_0

    .line 232
    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->SENSITIVITY:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_7

    const/4 v1, -0x1

    .line 234
    .local v1, offset:I
    :goto_1
    if-eqz v1, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v4, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onStop(I)V

    goto :goto_0

    .line 232
    .end local v1           #offset:I
    :cond_7
    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->SENSITIVITY:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v4

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 102
    .local v0, wasHidden:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 103
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->show()V

    .line 104
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 108
    return-void
.end method

.method protected updateViews()V
    .locals 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mDolbyView:Lcom/huawei/gallery3d/dolby/Dolby;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/dolby/Dolby;->setVisibility(I)V

    .line 273
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->updateViews()V

    goto :goto_0
.end method
