.class Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;
.super Ljava/lang/Object;
.source "TargetView.java"


# static fields
.field private static final FOCUSING_DURATION:I = 0x7d

.field private static final SCALE_CURRENT_RATE:F = 1.0f

.field private static final SCALE_DOWN_DURATION:I = 0x12c

.field private static final SCALE_UP_DURATION:I = 0x12c

.field private static final SCALE_UP_RATE:F = 2.5f

.field private static final TRANSLATE_LMIT_DURATION:I = 0x0

.field private static final TRANSLATE_LMIT_THAN_DURATION:I = 0xc8

.field private static final TRANSLATE_RATE:F = 1.0f


# instance fields
.field private mAlphaDownAnimation:Landroid/animation/ValueAnimator;

.field private mAlphaUpAnimation:Landroid/animation/ValueAnimator;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDistance:F

.field private mFocusView:Lcom/android/hwcamera/ui/TargetView;

.field private mFocusingAnimation:Landroid/animation/ValueAnimator;

.field private mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

.field private mScaleDownAnimation:Landroid/animation/ValueAnimator;

.field private mScaleUpAnimation:Landroid/animation/ValueAnimator;

.field private mTargetX:F

.field private mTargetY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    invoke-direct {p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->initAnimation()V

    .line 437
    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/ui/TargetView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Lcom/android/hwcamera/ui/TargetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 412
    iget v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 412
    iget v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getdistance()F
    .locals 4

    .prologue
    .line 642
    iget v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mCurrentX:F

    iget v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mCurrentX:F

    iget v2, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mCurrentY:F

    iget v2, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mCurrentY:F

    iget v3, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetY:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private initAnimation()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d

    const/4 v6, -0x1

    const-wide/16 v4, 0x12c

    const/4 v3, 0x2

    .line 468
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    .line 469
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 470
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 471
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 472
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$1;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$2;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 492
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    .line 493
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$3;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$3;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    .line 502
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$4;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 518
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    .line 519
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 520
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$6;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    .line 528
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$7;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$8;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$8;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 544
    new-array v0, v3, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    .line 545
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 546
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 547
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 548
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$9;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$9;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$10;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$10;-><init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    return-void

    .line 468
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    .line 492
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 501
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x40t
    .end array-data

    .line 518
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    .line 527
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 544
    :array_5
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mCurrentX:F

    .line 630
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mCurrentY:F

    .line 631
    invoke-direct {p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->getdistance()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mDistance:F

    .line 632
    iget v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mDistance:F

    const/high16 v2, 0x3f80

    div-float v0, v1, v2

    .line 633
    .local v0, duration:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :cond_0
    const/high16 v1, 0x4348

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 637
    const/high16 v0, 0x4348

    .line 639
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAllAnimation()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 465
    :cond_5
    return-void
.end method

.method public cancelFocusingTarget()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 606
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setAlpha(F)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setDrawable(I)V

    .line 609
    return-void
.end method

.method public setLocation(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 647
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetX:F

    .line 648
    int-to-float v0, p2

    iput v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetY:F

    .line 649
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setX(F)V

    .line 650
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setY(F)V

    .line 651
    return-void
.end method

.method public showFail()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const v1, 0x7f020214

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setDrawable(I)V

    .line 616
    return-void
.end method

.method public showFocuing()V
    .locals 7

    .prologue
    .line 581
    iget-object v3, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const v4, 0x7f020216

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ui/TargetView;->setDrawable(I)V

    .line 582
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 583
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    iget-object v3, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    sub-long v1, v3, v5

    .line 585
    .local v1, duration:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 586
    const-wide/16 v1, 0x0

    .line 588
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 590
    .end local v1           #duration:J
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleDownAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 591
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 592
    return-void
.end method

.method public showFocusingTarget()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 595
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const v2, 0x7f020216

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/TargetView;->setDrawable(I)V

    .line 596
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/ui/TargetView;->setScaleX(F)V

    .line 597
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/ui/TargetView;->setScaleY(F)V

    .line 598
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 599
    .local v0, animatorSet:Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingTargetAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 600
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 601
    return-void
.end method

.method public showStart()V
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->cancelAllAnimation()V

    .line 575
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const v1, 0x7f020216

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setDrawable(I)V

    .line 576
    invoke-direct {p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->initConfig()V

    .line 577
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mScaleUpAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 578
    return-void
.end method

.method public showSuccess()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 619
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setScaleX(F)V

    .line 623
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setScaleY(F)V

    .line 624
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setDrawable(I)V

    .line 626
    return-void
.end method
