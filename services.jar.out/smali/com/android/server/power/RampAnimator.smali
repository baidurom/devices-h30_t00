.class final Lcom/android/server/power/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isUserSwtiching:Z

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mDecScale:F

.field private mFirstTime:Z

.field private mIncScale:F

.field private mIsRateDiff:Z

.field private mLastFrameTimeNanos:J

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, property:Landroid/util/IntProperty;,"Landroid/util/IntProperty<TT;>;"
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->isUserSwtiching:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    .line 166
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 56
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/RampAnimator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mIncScale:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mIncScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mDecScale:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mDecScale:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->isUserSwtiching:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->isUserSwtiching:Z

    return p1
.end method

.method private postCallback()V
    .locals 4

    .prologue
    .line 163
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 164
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 4
    .parameter "target"
    .parameter "rate"

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 127
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_0

    .line 128
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 129
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 130
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 159
    :goto_0
    return v1

    .line 141
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_3

    .line 145
    :cond_2
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 148
    :cond_3
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_4

    move v0, v1

    .line 149
    .local v0, changed:Z
    :cond_4
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 152
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_5

    .line 153
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 154
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 155
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 156
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_5
    move v1, v0

    .line 159
    goto :goto_0
.end method

.method public animateTo(IIFFZZ)Z
    .locals 4
    .parameter "target"
    .parameter "rate"
    .parameter "incScale"
    .parameter "decScale"
    .parameter "rateDiff"
    .parameter "immediate"

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_1

    .line 64
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 65
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 66
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p6, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 70
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 72
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_0

    .line 73
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->isUserSwtiching:Z

    .line 74
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    goto :goto_0

    .line 79
    :cond_2
    iput-boolean p5, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    .line 80
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    if-eqz v2, :cond_3

    .line 81
    iput p3, p0, Lcom/android/server/power/RampAnimator;->mIncScale:F

    .line 82
    iput p4, p0, Lcom/android/server/power/RampAnimator;->mDecScale:F

    .line 92
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_5

    :cond_4
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_6

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_6

    .line 96
    :cond_5
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 99
    :cond_6
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_7

    move v0, v1

    .line 100
    .local v0, changed:Z
    :cond_7
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 103
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_8

    .line 104
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 105
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 107
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_8
    move v1, v0

    .line 110
    goto :goto_0
.end method
