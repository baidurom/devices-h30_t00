.class public Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;
.super Lcom/android/hwcamera/ui/RotateLayout;
.source "AutoFocusIndicator.java"

# interfaces
.implements Lcom/android/hwcamera/ui/indicator/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;,
        Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;,
        Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;
    }
.end annotation


# static fields
.field private static final DISAPPEAR_TIMEOUT:I = 0xc8

.field private static final FOUCING_DURATION:I = 0x7d

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final SCALE_UP_DURATION:I = 0x96

.field private static final SCALE_UP_RATE:F = 1.5f

.field private static final SCALING_DOWN_TIME:I = 0xc8

.field private static final STATE_FINISHING:I = 0x2

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I


# instance fields
.field private volatile mBlocked:Z

.field private mDisappear:Ljava/lang/Runnable;

.field private mEndAction:Ljava/lang/Runnable;

.field private mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

.field private mState:I

.field private scaleDownAnimation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mDisappear:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mEndAction:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->scaleDownAnimation:Ljava/lang/Runnable;

    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->initFocusIngAnimation()V

    .line 46
    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    return p1
.end method

.method private initFocusIngAnimation()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    .line 98
    return-void
.end method

.method private isRecording()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/hwcamera/CameraActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseFocusIngAnimation()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->setFocusingView(Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->cancel()V

    .line 150
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 152
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mDisappear:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->setScaleX(F)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->setScaleY(F)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->setAlpha(F)V

    .line 156
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->releaseFocusIngAnimation()V

    .line 178
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .parameter "bTrue"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mBlocked:Z

    .line 110
    return-void
.end method

.method public showFail(Z)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/high16 v3, 0x3f80

    .line 136
    iget v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mBlocked:Z

    if-nez v0, :cond_0

    .line 137
    const v0, 0x7f02017c

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->setDrawable(I)V

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->cancel()V

    .line 139
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 140
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mEndAction:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    .line 144
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showStart()V
    .locals 3

    .prologue
    const/high16 v2, 0x3fc0

    .line 114
    iget v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mBlocked:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    const v0, 0x7f02017e

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->setDrawable(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->scaleDownAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    .line 120
    :cond_0
    return-void
.end method

.method public showSuccess(Z)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/high16 v3, 0x3f80

    .line 124
    iget v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mBlocked:Z

    if-nez v0, :cond_0

    .line 125
    const v0, 0x7f02017d

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->setDrawable(I)V

    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->cancel()V

    .line 127
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 128
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mEndAction:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I

    .line 132
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
