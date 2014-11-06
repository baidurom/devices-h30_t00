.class public Lcom/android/hwcamera/control/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/control/Switcher$OnSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0xc8

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "Switcher"


# instance fields
.field private mAnimationStartPosition:I

.field private mAnimationStartTime:J

.field private mDownX:F

.field private mDownY:F

.field private mEnableAction:Ljava/lang/Runnable;

.field private mIsClick:Z

.field private mIsLand:Z

.field private mListener:Lcom/android/hwcamera/control/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mSwitch:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v3, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    .line 51
    iput v3, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 52
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/hwcamera/control/Switcher;->mAnimationStartTime:J

    .line 56
    iput-boolean v5, p0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    .line 58
    iput-boolean v5, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    .line 60
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/hwcamera/control/Switcher;->mTouchSlop:I

    .line 62
    iput v4, p0, Lcom/android/hwcamera/control/Switcher;->mDownX:F

    .line 63
    iput v4, p0, Lcom/android/hwcamera/control/Switcher;->mDownY:F

    .line 66
    new-instance v1, Lcom/android/hwcamera/control/Switcher$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/control/Switcher$1;-><init>(Lcom/android/hwcamera/control/Switcher;)V

    iput-object v1, p0, Lcom/android/hwcamera/control/Switcher;->mEnableAction:Ljava/lang/Runnable;

    .line 76
    sget-object v1, Lcom/android/hwcamera/R$styleable;->CameraSwitcher:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private handleMove(FFLandroid/view/MotionEvent;)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 294
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    .line 295
    iget-boolean v0, p0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/control/Switcher;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 297
    iput-boolean v2, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/control/Switcher;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 301
    iput-boolean v2, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, available:I
    iget-boolean v3, p0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v3, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 200
    .local v1, drawableHeight:I
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v3, v1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 210
    .end local v1           #drawableHeight:I
    :goto_0
    iget v3, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    if-gez v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 211
    :cond_0
    iget v3, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    if-le v3, v0, :cond_1

    iput v0, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->invalidate()V

    .line 213
    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 206
    .local v2, drawableWidth:I
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v3, v2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    goto :goto_0
.end method

.method private tryToSetSwitch(Z)V
    .locals 3
    .parameter "onOff"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "Switcher"

    const-string v1, "disable switcher for a short while"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/control/Switcher;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/control/Switcher;->mEnableAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/hwcamera/control/Switcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/control/Switcher;->mListener:Lcom/android/hwcamera/control/Switcher$OnSwitchListener;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/control/Switcher;->mListener:Lcom/android/hwcamera/control/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/hwcamera/control/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/android/hwcamera/control/Switcher;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :cond_3
    iput-boolean p1, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    goto :goto_0
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 280
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 219
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 220
    .local v5, drawableHeight:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 222
    .local v6, drawableWidth:I
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 227
    .local v1, available:I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v12, :cond_5

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v5

    .line 237
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/hwcamera/control/Switcher;->mAnimationStartTime:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    .line 238
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .line 239
    .local v10, time:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/hwcamera/control/Switcher;->mAnimationStartTime:J

    sub-long v12, v10, v12

    long-to-int v2, v12

    .line 240
    .local v2, deltaTime:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/control/Switcher;->mAnimationStartPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-eqz v13, :cond_6

    .end local v2           #deltaTime:I
    :goto_2
    mul-int/lit16 v13, v2, 0xc8

    div-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 242
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    if-gez v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    if-le v12, v1, :cond_3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    .line 244
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-eqz v13, :cond_7

    .end local v1           #available:I
    :goto_3
    if-ne v12, v1, :cond_8

    const/4 v3, 0x1

    .line 245
    .local v3, done:Z
    :goto_4
    if-nez v3, :cond_9

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->invalidate()V

    .line 261
    .end local v3           #done:Z
    .end local v10           #time:J
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v12, :cond_e

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingTop()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    add-int v8, v12, v13

    .line 264
    .local v8, offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getWidth()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v7, v12, 0x2

    .line 271
    .local v7, offsetLeft:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 272
    .local v9, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    int-to-float v12, v7

    int-to-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 234
    .end local v7           #offsetLeft:I
    .end local v8           #offsetTop:I
    .end local v9           #saveCount:I
    .restart local v1       #available:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v6

    goto/16 :goto_1

    .line 240
    .restart local v2       #deltaTime:I
    .restart local v10       #time:J
    :cond_6
    neg-int v2, v2

    goto :goto_2

    .line 244
    .end local v2           #deltaTime:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .end local v1           #available:I
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 248
    .restart local v3       #done:Z
    :cond_9
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/hwcamera/control/Switcher;->mAnimationStartTime:J

    goto :goto_5

    .line 250
    .end local v3           #done:Z
    .end local v10           #time:J
    .restart local v1       #available:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->isPressed()Z

    move-result v12

    if-nez v12, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v12, :cond_c

    .line 253
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-eqz v12, :cond_b

    const/4 v1, 0x0

    .end local v1           #available:I
    :cond_b
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    goto :goto_5

    .line 256
    .restart local v1       #available:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-eqz v12, :cond_d

    .end local v1           #available:I
    :goto_7
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    goto :goto_5

    .restart local v1       #available:I
    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    .line 267
    .end local v1           #available:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v8, v12, 0x2

    .line 268
    .restart local v8       #offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingRight()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    add-int v7, v12, v13

    .restart local v7       #offsetLeft:I
    goto :goto_6
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 286
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/control/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/high16 v5, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    :goto_0
    return v3

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 124
    .local v0, available:I
    iget-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v0, v1, v4

    .line 133
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    move v3, v2

    .line 191
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v0, v1, v4

    goto :goto_1

    .line 135
    :pswitch_0
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/hwcamera/control/Switcher;->mAnimationStartTime:J

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/control/Switcher;->setPressed(Z)V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/control/Switcher;->mDownX:F

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/control/Switcher;->mDownY:F

    goto :goto_2

    .line 143
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    if-eqz v1, :cond_2

    .line 144
    iget v1, p0, Lcom/android/hwcamera/control/Switcher;->mDownX:F

    iget v3, p0, Lcom/android/hwcamera/control/Switcher;->mDownY:F

    invoke-direct {p0, v1, v3, p1}, Lcom/android/hwcamera/control/Switcher;->handleMove(FFLandroid/view/MotionEvent;)V

    goto :goto_2

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/control/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 150
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/control/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 154
    iget-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    if-eqz v1, :cond_4

    .line 155
    iget-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/hwcamera/control/Switcher;->tryToSetSwitch(Z)V

    .line 174
    :goto_4
    iput-boolean v2, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    .line 175
    iput v5, p0, Lcom/android/hwcamera/control/Switcher;->mDownX:F

    .line 176
    iput v5, p0, Lcom/android/hwcamera/control/Switcher;->mDownY:F

    .line 177
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/control/Switcher;->setPressed(Z)V

    goto :goto_2

    :cond_3
    move v1, v3

    .line 155
    goto :goto_3

    .line 157
    :cond_4
    iget-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mIsLand:Z

    if-eqz v1, :cond_6

    .line 163
    iget v1, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_5

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/hwcamera/control/Switcher;->tryToSetSwitch(Z)V

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    .line 170
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/control/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_7

    move v1, v2

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/hwcamera/control/Switcher;->tryToSetSwitch(Z)V

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_6

    .line 181
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    invoke-direct {p0, v1}, Lcom/android/hwcamera/control/Switcher;->tryToSetSwitch(Z)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/control/Switcher;->setPressed(Z)V

    .line 184
    iput-boolean v2, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    .line 185
    iput v5, p0, Lcom/android/hwcamera/control/Switcher;->mDownX:F

    .line 186
    iput v5, p0, Lcom/android/hwcamera/control/Switcher;->mDownY:F

    goto/16 :goto_2

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/high16 v1, -0x4080

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/control/Switcher;->setPressed(Z)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/control/Switcher;->mIsClick:Z

    .line 115
    iput v1, p0, Lcom/android/hwcamera/control/Switcher;->mDownX:F

    .line 116
    iput v1, p0, Lcom/android/hwcamera/control/Switcher;->mDownY:F

    .line 117
    return-void
.end method

.method public setOnSwitchListener(Lcom/android/hwcamera/control/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/hwcamera/control/Switcher;->mListener:Lcom/android/hwcamera/control/Switcher$OnSwitchListener;

    .line 107
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-boolean p1, p0, Lcom/android/hwcamera/control/Switcher;->mSwitch:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/hwcamera/control/Switcher;->invalidate()V

    goto :goto_0
.end method
