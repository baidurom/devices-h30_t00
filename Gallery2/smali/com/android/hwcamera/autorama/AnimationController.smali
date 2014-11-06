.class public Lcom/android/hwcamera/autorama/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# static fields
.field public static final ANIM_DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "AnimationController"


# instance fields
.field private mApplyCenterArrowAnim:Ljava/lang/Runnable;

.field private mApplyDirectionAnim:Ljava/lang/Runnable;

.field private mCenterArrow:Landroid/view/ViewGroup;

.field private mCenterDotIndex:I

.field private mDirectionDotIndex:I

.field private mDirectionIndicators:[Landroid/view/ViewGroup;

.field private mHanler:Landroid/os/Handler;


# direct methods
.method public constructor <init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "indicators"
    .parameter "arrow"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mHanler:Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/android/hwcamera/autorama/AnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/autorama/AnimationController$1;-><init>(Lcom/android/hwcamera/autorama/AnimationController;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mApplyCenterArrowAnim:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/android/hwcamera/autorama/AnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/autorama/AnimationController$2;-><init>(Lcom/android/hwcamera/autorama/AnimationController;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mApplyDirectionAnim:Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;

    .line 74
    iput-object p2, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/autorama/AnimationController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/autorama/AnimationController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/hwcamera/autorama/AnimationController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/autorama/AnimationController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mHanler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/autorama/AnimationController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/hwcamera/autorama/AnimationController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I

    return v0
.end method


# virtual methods
.method public declared-synchronized startCenterAnimation()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mApplyCenterArrowAnim:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDirectionAnimation()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I

    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/autorama/AnimationController;->mApplyDirectionAnim:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopCenterAnimation()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public stopDirectionAnimation()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
