.class public abstract Lcom/android/gallery3d/anim/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/anim/Animation$AnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_START:J = -0x1L

.field private static final ANIMATION_TARGET_FRAME_INTERVAL:I = 0x16

.field private static final NO_ANIMATION:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "Animation"


# instance fields
.field private mDuration:I

.field private mFillAfter:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimating:Z

.field private mListener:Lcom/android/gallery3d/anim/Animation$AnimationListener;

.field private mPreFrameElapse:F

.field private mReverse:Z

.field protected mReversePercent:F

.field private mStartTime:J

.field private mTotoalMissElapse:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 66
    iput-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mReverse:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mFillAfter:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mIsAnimating:Z

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/anim/Animation;->mTotoalMissElapse:F

    .line 152
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 13
    .parameter "currentTimeMillis"

    .prologue
    const-wide/16 v11, -0x2

    const/4 v2, 0x1

    const/high16 v10, 0x41b0

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 155
    iget-wide v5, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    cmp-long v5, v5, v11

    if-nez v5, :cond_0

    .line 198
    :goto_0
    return v4

    .line 156
    :cond_0
    iget-wide v5, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    iput-wide p1, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 157
    :cond_1
    iget-wide v5, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    sub-long v5, p1, v5

    long-to-int v0, v5

    .line 161
    .local v0, elapse:I
    iget v5, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    const/high16 v6, -0x4080

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 162
    int-to-float v5, v0

    iput v5, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    .line 164
    :cond_2
    int-to-float v5, v0

    iget v6, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v10

    if-lez v5, :cond_3

    .line 165
    iget v5, p0, Lcom/android/gallery3d/anim/Animation;->mTotoalMissElapse:F

    int-to-float v6, v0

    iget v7, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v10

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/anim/Animation;->mTotoalMissElapse:F

    .line 167
    :cond_3
    int-to-float v5, v0

    iput v5, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    .line 168
    int-to-float v5, v0

    iget v6, p0, Lcom/android/gallery3d/anim/Animation;->mTotoalMissElapse:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 172
    int-to-float v5, v0

    iget v6, p0, Lcom/android/gallery3d/anim/Animation;->mDuration:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 174
    .local v3, x:F
    iget-boolean v5, p0, Lcom/android/gallery3d/anim/Animation;->mReverse:Z

    if-eqz v5, :cond_8

    .line 175
    const/high16 v5, 0x4000

    iget v6, p0, Lcom/android/gallery3d/anim/Animation;->mReversePercent:F

    mul-float/2addr v5, v6

    sub-float v3, v5, v3

    .line 176
    cmpl-float v5, v3, v9

    if-lez v5, :cond_7

    .line 185
    .local v2, more:Z
    :goto_1
    const/high16 v4, 0x3f80

    invoke-static {v3, v9, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    .line 186
    iget-object v1, p0, Lcom/android/gallery3d/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    .local v1, i:Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_4

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .end local v3           #x:F
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/anim/Animation;->onCalculate(F)V

    .line 193
    if-nez v2, :cond_6

    .line 195
    iget-boolean v4, p0, Lcom/android/gallery3d/anim/Animation;->mFillAfter:Z

    if-nez v4, :cond_5

    iput-wide v11, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->onAnimationEnd()V

    .line 198
    :cond_6
    iget-boolean v4, p0, Lcom/android/gallery3d/anim/Animation;->mIsAnimating:Z

    goto :goto_0

    .end local v1           #i:Landroid/view/animation/Interpolator;
    .end local v2           #more:Z
    .restart local v3       #x:F
    :cond_7
    move v2, v4

    .line 176
    goto :goto_1

    .line 178
    :cond_8
    iput v3, p0, Lcom/android/gallery3d/anim/Animation;->mReversePercent:F

    .line 179
    iget v5, p0, Lcom/android/gallery3d/anim/Animation;->mDuration:I

    if-ge v0, v5, :cond_9

    .restart local v2       #more:Z
    :goto_2
    goto :goto_1

    .end local v2           #more:Z
    :cond_9
    move v2, v4

    goto :goto_2
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 145
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 147
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->onAnimationEnd()V

    .line 148
    return-void
.end method

.method protected getSoundAction()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, -0x1

    return v0
.end method

.method public hasReverse()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/gallery3d/anim/Animation;->mReverse:Z

    return v0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/gallery3d/anim/Animation;->mIsAnimating:Z

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->getSoundAction()I

    move-result v0

    .line 205
    .local v0, action:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 206
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSoundPlayer()Lcom/android/gallery3d/app/SoundClips$Player;

    move-result-object v1

    .line 207
    .local v1, player:Lcom/android/gallery3d/app/SoundClips$Player;
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/SoundClips$Player;->stop(I)V

    .line 210
    .end local v1           #player:Lcom/android/gallery3d/app/SoundClips$Player;
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mIsAnimating:Z

    if-nez v2, :cond_2

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mIsAnimating:Z

    .line 213
    iget-object v2, p0, Lcom/android/gallery3d/anim/Animation;->mListener:Lcom/android/gallery3d/anim/Animation$AnimationListener;

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/gallery3d/anim/Animation;->mListener:Lcom/android/gallery3d/anim/Animation$AnimationListener;

    invoke-interface {v2}, Lcom/android/gallery3d/anim/Animation$AnimationListener;->onAnimationEnd()V

    goto :goto_0
.end method

.method protected abstract onCalculate(F)V
.end method

.method public setAnimationListener(Lcom/android/gallery3d/anim/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/gallery3d/anim/Animation;->mListener:Lcom/android/gallery3d/anim/Animation$AnimationListener;

    .line 85
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/gallery3d/anim/Animation;->mDuration:I

    .line 111
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "bFillAfter"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/gallery3d/anim/Animation;->mFillAfter:Z

    .line 103
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 107
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .parameter "bReverse"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/gallery3d/anim/Animation;->mReverse:Z

    .line 93
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 134
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mIsAnimating:Z

    .line 118
    iget-boolean v2, p0, Lcom/android/gallery3d/anim/Animation;->mReverse:Z

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 123
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/anim/Animation;->mTotoalMissElapse:F

    .line 124
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/gallery3d/anim/Animation;->mPreFrameElapse:F

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->getSoundAction()I

    move-result v0

    .line 126
    .local v0, action:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 127
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSoundPlayer()Lcom/android/gallery3d/app/SoundClips$Player;

    move-result-object v1

    .line 128
    .local v1, player:Lcom/android/gallery3d/app/SoundClips$Player;
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/SoundClips$Player;->play(I)V

    goto :goto_0
.end method
