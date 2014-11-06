.class Lcom/android/gallery3d/ui/EdgeAnimation;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final ABSORB_TIME:I = 0xc8

.field private static final RELEASE_TIME:I = 0x1f4

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_RELEASE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeAnimation"

.field private static final VELOCITY_FACTOR:F = 0.1f


# instance fields
.field private mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mState:I

.field private mValue:F

.field private mValueFinish:F

.field private mValueStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    .line 138
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private startAnimation(FFJI)V
    .locals 2
    .parameter "start"
    .parameter "finish"
    .parameter "duration"
    .parameter "newState"

    .prologue
    .line 142
    iput p1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    .line 143
    iput p2, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    .line 144
    iput-wide p3, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mDuration:J

    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mStartTime:J

    .line 146
    iput p5, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    .line 147
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    return v0
.end method

.method public onAbsorb(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const v1, 0x3dcccccd

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 v1, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 166
    .local v2, finish:F
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    .line 167
    return-void
.end method

.method public onPull(F)V
    .locals 3
    .parameter "deltaDistance"

    .prologue
    .line 153
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    add-float/2addr v0, p1

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_0
.end method

.method public onRelease()V
    .locals 6

    .prologue
    .line 159
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    goto :goto_0
.end method

.method public update()Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 170
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-nez v1, :cond_0

    .line 191
    :goto_0
    return v0

    .line 171
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-ne v1, v8, :cond_1

    move v0, v8

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mStartTime:J

    sub-long/2addr v3, v9

    long-to-float v1, v3

    iget-wide v3, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v7

    .line 175
    .local v7, t:F
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    move v6, v7

    .line 178
    .local v6, interp:F
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    iget v3, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    iget v4, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    .line 180
    cmpl-float v1, v7, v5

    if-ltz v1, :cond_2

    .line 181
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_2
    move v0, v8

    .line 191
    goto :goto_0

    .line 175
    .end local v6           #interp:F
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_1

    .line 183
    .restart local v6       #interp:F
    :pswitch_0
    iget v1, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    goto :goto_2

    .line 186
    :pswitch_1
    iput v0, p0, Lcom/android/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_2

    .line 181
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
