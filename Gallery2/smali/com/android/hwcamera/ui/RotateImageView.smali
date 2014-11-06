.class public Lcom/android/hwcamera/ui/RotateImageView;
.super Lcom/android/hwcamera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/hwcamera/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    .line 43
    iput v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mStartDegree:I

    .line 44
    iput v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    .line 46
    iput-boolean v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mEnableAnimation:Z

    .line 48
    iput-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationStartTime:J

    .line 49
    iput-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationEndTime:J

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    .line 43
    iput v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mStartDegree:I

    .line 44
    iput v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    .line 46
    iput-boolean v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mEnableAnimation:Z

    .line 48
    iput-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationStartTime:J

    .line 49
    iput-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationEndTime:J

    .line 53
    return-void
.end method


# virtual methods
.method protected getDegree()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 96
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 99
    .local v4, bounds:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v17, v19, v20

    .line 100
    .local v17, w:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 102
    .local v8, h:I
    if-eqz v17, :cond_0

    if-eqz v8, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 105
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 106
    .local v14, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v14, v19

    if-gez v19, :cond_7

    .line 107
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    move-wide/from16 v0, v19

    long-to-int v6, v0

    .line 108
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mStartDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mClockwise:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .end local v6           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v6, 0x10e

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    add-int v5, v19, v20

    .line 110
    .local v5, degree:I
    if-ltz v5, :cond_6

    rem-int/lit16 v5, v5, 0x168

    .line 111
    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->invalidate()V

    .line 118
    .end local v5           #degree:I
    .end local v14           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 119
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingTop()I

    move-result v16

    .line 120
    .local v16, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingRight()I

    move-result v12

    .line 121
    .local v12, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 122
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getWidth()I

    move-result v19

    sub-int v19, v19, v10

    sub-int v18, v19, v12

    .line 123
    .local v18, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getHeight()I

    move-result v19

    sub-int v19, v19, v16

    sub-int v9, v19, v3

    .line 125
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v13

    .line 128
    .local v13, saveCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v19

    sget-object v20, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    if-ge v9, v8, :cond_4

    .line 130
    :cond_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 131
    .local v11, ratio:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 133
    .end local v11           #ratio:F
    :cond_4
    div-int/lit8 v19, v18, 0x2

    add-int v19, v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 135
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    neg-int v0, v8

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 108
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v13           #saveCount:I
    .end local v16           #top:I
    .end local v18           #width:I
    .restart local v6       #deltaTime:I
    .restart local v14       #time:J
    :cond_5
    neg-int v6, v6

    goto/16 :goto_1

    .line 110
    .end local v6           #deltaTime:I
    .restart local v5       #degree:I
    :cond_6
    rem-int/lit16 v0, v5, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_2

    .line 114
    .end local v5           #degree:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 147
    if-nez p1, :cond_0

    .line 148
    iput-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 149
    iput-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ui/RotateImageView;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 156
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 158
    .local v1, miniThumbWidth:I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 160
    .local v0, miniThumbHeight:I
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 163
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_2

    .line 164
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 165
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 166
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 169
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 170
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 171
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v3, p0, Lcom/android/hwcamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 66
    iput-boolean p2, p0, Lcom/android/hwcamera/ui/RotateImageView;->mEnableAnimation:Z

    .line 68
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 69
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 91
    :goto_1
    return-void

    .line 68
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 71
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    .line 72
    iget-boolean v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 73
    iget v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mStartDegree:I

    .line 74
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationStartTime:J

    .line 76
    iget v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 77
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 81
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 83
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mClockwise:Z

    .line 84
    iget-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mAnimationEndTime:J

    .line 90
    .end local v0           #diff:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 77
    .restart local v0       #diff:I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 83
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 87
    .end local v0           #diff:I
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/android/hwcamera/ui/RotateImageView;->mCurrentDegree:I

    goto :goto_4
.end method
