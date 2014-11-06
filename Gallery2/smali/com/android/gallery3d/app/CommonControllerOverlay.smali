.class public abstract Lcom/android/gallery3d/app/CommonControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "CommonControllerOverlay.java"

# interfaces
.implements Lcom/android/gallery3d/app/ControllerOverlay;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/app/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CommonControllerOverlay$State;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_RELATIVE_PADDING:F = 0.16666667f


# instance fields
.field private canPause:Z

.field private isBufferDone:Z

.field private final loadingText:Landroid/widget/TextView;

.field protected final mBackground:Landroid/view/View;

.field public mCanNotPlaypause:Z

.field protected mCanReplay:Z

.field protected final mErrorView:Landroid/widget/TextView;

.field private mIsLiveStreaming:Z

.field public mIsNotStreamVideo:Z

.field protected mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

.field protected mListenerEx:Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;

.field protected final mLoadingView:Landroid/widget/LinearLayout;

.field protected mMainView:Landroid/view/View;

.field public final mNextView:Landroid/widget/ImageView;

.field protected final mPlayPauseReplayView:Landroid/widget/ImageView;

.field public final mPreView:Landroid/widget/ImageView;

.field protected mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field protected mTimeBar:Lcom/android/gallery3d/app/TimeBar;

.field private final mWindowInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->isBufferDone:Z

    .line 65
    iput-boolean v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsLiveStreaming:Z

    .line 72
    iput-boolean v7, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    .line 76
    iput-boolean v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    .line 81
    iput-boolean v7, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    .line 83
    iput-boolean v7, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->canPause:Z

    .line 335
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 89
    sget-object v4, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 91
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v3, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v0, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    .line 97
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->createTimeBar(Landroid/content/Context;)V

    .line 103
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    .line 106
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 110
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    const v5, 0x2050055

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    .line 122
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const v5, 0x7f020221

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 126
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 127
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    .line 131
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    .line 134
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    const v5, 0x7f02004d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 137
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 138
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    .line 142
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 145
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 146
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->hide()V

    .line 155
    return-void
.end method

.method private createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 160
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, view:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    return-object v0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 392
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 393
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 394
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 395
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 396
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 255
    iput-object p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    .line 256
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPreNextView(I)V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->show()V

    .line 273
    return-void

    :cond_0
    move v0, v2

    .line 256
    goto :goto_0

    :cond_1
    move v0, v2

    .line 257
    goto :goto_1

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    move v2, v1

    .line 270
    goto :goto_3
.end method


# virtual methods
.method protected abstract createTimeBar(Landroid/content/Context;)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "insets"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 179
    return-object p0
.end method

.method protected getWinInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setVisibility(I)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPreNextView(I)V

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->requestFocus()Z

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_3

    .line 287
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    .line 300
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListenerEx:Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListenerEx:Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;->onPreVideo()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListenerEx:Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;->onNextVideo()V

    .line 309
    :cond_2
    return-void

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 292
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 313
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 351
    iget-object v8, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 352
    .local v8, insets:Landroid/graphics/Rect;
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 353
    .local v10, pl:I
    iget v11, v8, Landroid/graphics/Rect;->right:I

    .line 354
    .local v11, pr:I
    iget v12, v8, Landroid/graphics/Rect;->top:I

    .line 355
    .local v12, pt:I
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 357
    .local v9, pb:I
    sub-int v6, p5, p3

    .line 358
    .local v6, h:I
    sub-int v5, p4, p2

    .line 359
    .local v5, w:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v7, 0x1

    .line 361
    .local v7, error:Z
    :goto_0
    sub-int v13, v6, v9

    .line 366
    .local v13, y:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v3

    sub-int v3, v13, v3

    invoke-virtual {v1, v2, v3, v5, v13}, Landroid/view/View;->layout(IIII)V

    .line 367
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v2

    sub-int v2, v13, v2

    sub-int v3, v5, v11

    invoke-virtual {v1, v10, v2, v3, v13}, Lcom/android/gallery3d/app/TimeBar;->layout(IIII)V

    .line 371
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TimeBar;->requestLayout()V

    .line 374
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 377
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->getStreamingcfg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x28

    div-int/lit8 v3, p4, 0x2

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TimeBar;->getTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    move/from16 v0, p2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 379
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    div-int/lit8 v2, p4, 0x2

    add-int v2, v2, p2

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x28

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TimeBar;->getTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    move/from16 v0, p4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v3

    sub-int v3, v13, v3

    add-int/lit8 v3, v3, -0x7

    sub-int v4, v5, v11

    invoke-virtual {v1, v2, v3, v4, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 385
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 388
    :cond_1
    return-void

    .line 359
    .end local v7           #error:Z
    .end local v13           #y:I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->measureChildren(II)V

    .line 402
    return-void
.end method

.method public onScrubbingEnd(III)V
    .locals 1
    .parameter "time"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(III)V

    .line 470
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    .line 465
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekStart()V

    .line 460
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetBufferFlag()V
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->isBufferDone:Z

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    const v1, 0x2050055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 522
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showLoading()V

    .line 523
    return-void
.end method

.method public setCanPause(Z)V
    .locals 0
    .parameter "canPause"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->canPause:Z

    .line 432
    return-void
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    .line 175
    return-void
.end method

.method public setCanScrub(Z)V
    .locals 1
    .parameter "canScrub"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/TimeBar;->enableScrub(Z)V

    .line 237
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsLiveStreaming:Z

    .line 239
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    .line 170
    return-void
.end method

.method public setListenerEx(Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListenerEx:Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;

    .line 444
    return-void
.end method

.method public setPlayingTxt()V
    .locals 3

    .prologue
    .line 527
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsLiveStreaming:Z

    if-eqz v1, :cond_0

    .line 528
    const v0, 0x2050053

    .line 529
    .local v0, msgId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    .end local v0           #msgId:I
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v1, v2, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    :cond_1
    const v0, 0x2050054

    .line 539
    .restart local v0       #msgId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setStreamVideo(Z)V
    .locals 1
    .parameter "isStreamVideo"

    .prologue
    .line 435
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    .line 436
    if-nez p1, :cond_0

    .line 437
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPreNextView(I)V

    .line 439
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimes(IIII)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/TimeBar;->setTime(IIII)V

    .line 231
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->updateViews()V

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setVisibility(I)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 280
    return-void
.end method

.method public showBuffering(ZI)V
    .locals 6
    .parameter "fullBuffer"
    .parameter "percent"

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 473
    if-eqz p1, :cond_1

    .line 481
    iput-boolean v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->isBufferDone:Z

    .line 483
    iput-boolean v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsLiveStreaming:Z

    .line 484
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setPlayingTxt()V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    if-ltz p2, :cond_2

    if-ge p2, v2, :cond_2

    .line 491
    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 492
    iput-boolean v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->isBufferDone:Z

    .line 493
    const v0, 0x205004f

    .line 494
    .local v0, msgId:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->loadingText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showLoading()V

    goto :goto_0

    .line 498
    .end local v0           #msgId:I
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    if-ne p2, v2, :cond_0

    .line 499
    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 500
    iput-boolean v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->isBufferDone:Z

    .line 511
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPlaying()V

    goto :goto_0
.end method

.method public showEnded()V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 219
    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 220
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 221
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public showPaused()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setPlayingTxt()V

    .line 203
    return-void
.end method

.method public showPlaying()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->isBufferDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setPlayingTxt()V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showLoading()V

    goto :goto_0
.end method

.method public showPreNextView(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mIsNotStreamVideo:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->getStreamingcfg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPreView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    :cond_0
    return-void
.end method

.method protected updateViews()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 407
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v4, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v4, :cond_0

    const v0, 0x7f020221

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanNotPlaypause:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPreNextView(I)V

    .line 425
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->requestLayout()V

    .line 426
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v4, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v4, :cond_1

    const v0, 0x7f020220

    goto :goto_0

    :cond_1
    const v0, 0x7f020222

    goto :goto_0

    .line 415
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v4, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v4, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v4, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->canPause:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method
