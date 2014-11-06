.class public Lcom/android/hwcamera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# static fields
.field private static final ANIM_BOTH:I = 0x0

.field private static final ANIM_FLASH:I = 0x1

.field private static final ANIM_SLIDE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final FLASH_LENGTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CAM_Capture"

.field private static final TIME_FLASH:I = 0x10a

.field private static final TIME_HOLD:I = 0x190

.field private static final TIME_SLIDE:I = 0x190


# instance fields
.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mDelta:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mFlashPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/hwcamera/CaptureAnimManager;->FLASH_LENGTH:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mFlashPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 60
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    .line 85
    return-void
.end method

.method public animateFlashAndSlide()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    .line 89
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimStartTime:J

    goto :goto_0
.end method

.method public animateSlide(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/CaptureAnimManager;->setOrientation(I)V

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimStartTime:J

    .line 80
    return-void
.end method

.method public calculate(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 99
    iput p3, p0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawWidth:I

    .line 100
    iput p4, p0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawHeight:I

    .line 101
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mX:F

    .line 102
    int-to-float v0, p2

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mY:F

    .line 103
    iget v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 105
    :sswitch_0
    int-to-float v0, p3

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 108
    :sswitch_1
    neg-int v0, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 111
    :sswitch_2
    neg-int v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 114
    :sswitch_3
    int-to-float v0, p4

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 18
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 126
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/CaptureAnimManager;->calculate(IIII)V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v16, v5, v7

    .line 129
    .local v16, timeDiff:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-wide/16 v5, 0x190

    cmp-long v5, v16, v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 168
    :goto_0
    return v5

    .line 130
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-wide/16 v5, 0x10a

    cmp-long v5, v16, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 131
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    if-nez v5, :cond_2

    const-wide/16 v5, 0x320

    cmp-long v5, v16, v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 133
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    .line 134
    .local v11, animStep:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimType:I

    if-nez v5, :cond_3

    .line 135
    const-wide/16 v5, 0x190

    cmp-long v5, v16, v5

    if-gez v5, :cond_4

    const/4 v11, 0x1

    .line 136
    :goto_1
    const/4 v5, 0x2

    if-ne v11, v5, :cond_3

    .line 137
    const-wide/16 v5, 0x190

    sub-long v16, v16, v5

    .line 141
    :cond_3
    const/4 v5, 0x1

    if-ne v11, v5, :cond_6

    .line 142
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mX:F

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mY:F

    float-to-int v8, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/hwcamera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 143
    move-wide/from16 v0, v16

    long-to-float v5, v0

    const/high16 v6, 0x4385

    div-float v13, v5, v6

    .line 144
    .local v13, fraction:F
    const/high16 v5, 0x3f00

    cmpg-float v5, v13, v5

    if-gez v5, :cond_5

    .line 145
    :goto_2
    const v5, 0x3fe66666

    mul-float/2addr v13, v5

    .line 146
    const/high16 v5, 0x437f

    mul-float/2addr v5, v13

    float-to-int v5, v5

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 147
    .local v12, color:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mFlashPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v5, v12}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mFlashPaint:Lcom/android/gallery3d/ui/GLPaint;

    sget v6, Lcom/android/hwcamera/CaptureAnimManager;->FLASH_LENGTH:F

    mul-float/2addr v6, v13

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 149
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mX:F

    float-to-int v5, v5

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mY:F

    float-to-int v5, v5

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v5, v5

    const/high16 v8, 0x3f00

    sub-float v8, v5, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v5, v5

    const/high16 v9, 0x3f00

    sub-float v9, v5, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/hwcamera/CaptureAnimManager;->mFlashPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 168
    .end local v12           #color:I
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 135
    .end local v13           #fraction:F
    :cond_4
    const/4 v11, 0x2

    goto :goto_1

    .line 144
    .restart local v13       #fraction:F
    :cond_5
    const/high16 v5, 0x3f80

    sub-float v13, v5, v13

    goto :goto_2

    .line 150
    .end local v13           #fraction:F
    :cond_6
    const/4 v5, 0x2

    if-ne v11, v5, :cond_9

    .line 151
    move-wide/from16 v0, v16

    long-to-float v5, v0

    const/high16 v6, 0x43c8

    div-float v13, v5, v6

    .line 152
    .restart local v13       #fraction:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/CaptureAnimManager;->mX:F

    .line 153
    .local v14, startX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/CaptureAnimManager;->mY:F

    .line 154
    .local v15, startY:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_8

    .line 155
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/hwcamera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v14, v5

    .line 161
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mX:F

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mY:F

    float-to-int v8, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/hwcamera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 164
    float-to-int v7, v14

    float-to-int v8, v15

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v5, p7

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_3

    .line 157
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/hwcamera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v15, v5

    goto :goto_4

    .line 166
    .end local v13           #fraction:F
    .end local v14           #startX:F
    .end local v15           #startY:F
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "displayRotation"

    .prologue
    .line 63
    rsub-int v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimOrientation:I

    .line 64
    const-string v0, "CAM_Capture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnimOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/CaptureAnimManager;->mAnimStartTime:J

    .line 94
    return-void
.end method
