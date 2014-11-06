.class public Lcom/android/hwcamera/ui/TargetView;
.super Landroid/widget/RelativeLayout;
.source "TargetView.java"

# interfaces
.implements Lcom/android/hwcamera/ui/indicator/FocusIndicator;


# static fields
.field public static final DISPLAY_TARGET:I = 0x4

.field public static final MARGIN_HEIGHT:I = 0x46

.field public static final MARGIN_WIDTH:I = 0x46

.field public static final STATE_FOCUS_START:I = 0x3

.field private static final TARGET_ERROR_DEAL:I = 0x2

.field public static final TARGET_LOSED:I = 0x2710

.field private static final TARGET_SHOW_FOCUSS:I = 0x1


# instance fields
.field private volatile mBlocked:Z

.field private mBottomLeftItemView:Landroid/view/View;

.field private mBottomRightItemView:Landroid/view/View;

.field private mCenterDrawableHeight:I

.field private mCenterDrawableWidth:I

.field private mCenterItemView:Landroid/view/View;

.field private mDispalyOrientation:I

.field private mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

.field private mHandler:Landroid/os/Handler;

.field private mPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSideDrawableHeight:I

.field private mSideDrawableWidth:I

.field private mStarted:Z

.field private mTargetHeight:I

.field private mTargetTracking:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

.field private mTargetWidth:I

.field private mTopLeftItemView:Landroid/view/View;

.field private mTopRightItemView:Landroid/view/View;

.field private ratio:F

.field private scaleX:F

.field private state:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x7f020216

    const v4, 0x7f0200ea

    const v3, 0x461c4000

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v1, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    .line 72
    iput v1, p0, Lcom/android/hwcamera/ui/TargetView;->mDispalyOrientation:I

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mPoints:Ljava/util/LinkedList;

    .line 78
    iput-boolean v1, p0, Lcom/android/hwcamera/ui/TargetView;->mStarted:Z

    .line 81
    new-instance v0, Lcom/android/hwcamera/ui/TargetView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/TargetView$1;-><init>(Lcom/android/hwcamera/ui/TargetView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mHandler:Landroid/os/Handler;

    .line 342
    iput v3, p0, Lcom/android/hwcamera/ui/TargetView;->x:F

    .line 343
    iput v3, p0, Lcom/android/hwcamera/ui/TargetView;->y:F

    .line 344
    iput v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    .line 345
    iput v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterDrawableWidth:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterDrawableHeight:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableWidth:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableHeight:I

    .line 109
    new-instance v0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;-><init>(Lcom/android/hwcamera/ui/TargetView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    .line 110
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->initChildView()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ui/TargetView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelFocusingTarget()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->cancelFocusingTarget()V

    .line 304
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetTracking:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->clear(Z)V

    .line 322
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .parameter "isForce"

    .prologue
    const/4 v1, 0x0

    .line 325
    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->cancelAllAnimation()V

    .line 333
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    if-nez v0, :cond_2

    .line 334
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    .line 336
    :cond_2
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    return v0
.end method

.method public getTargetViewHeight()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableHeight:I

    add-int/lit8 v0, v0, 0x46

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetHeight:I

    .line 256
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetHeight:I

    return v0
.end method

.method public getTargetViewWidth()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableWidth:I

    add-int/lit8 v0, v0, 0x46

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetWidth:I

    .line 251
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetWidth:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->y:F

    return v0
.end method

.method public initChildView()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    .line 261
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    .line 262
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    .line 263
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    .line 264
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 266
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 267
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 268
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->addView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->addView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->addView(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->addView(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->addView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method public declared-synchronized isNeedAutoFocus(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 9
    .parameter "lastTargetRect"
    .parameter "currentTargetRect"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget v5, p2, Landroid/graphics/RectF;->left:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    .line 233
    :cond_3
    invoke-static {p1, p2}, Lcom/android/hwcamera/Util;->distance(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    .line 234
    .local v0, distance:F
    const v2, 0x3d888889

    .line 235
    .local v2, ratio:F
    iget v5, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    move v1, v4

    .line 236
    .local v1, isDistanceEnough:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 238
    iget-object v5, p0, Lcom/android/hwcamera/ui/TargetView;->mPoints:Ljava/util/LinkedList;

    new-instance v6, Landroid/graphics/Point;

    iget v7, p2, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    iget-object v5, p0, Lcom/android/hwcamera/ui/TargetView;->mPoints:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v6, 0xb

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/hwcamera/ui/TargetView;->mPoints:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 241
    :cond_4
    iget-object v5, p0, Lcom/android/hwcamera/ui/TargetView;->mPoints:Ljava/util/LinkedList;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->isPointsStable(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/hwcamera/ui/TargetView;->mPoints:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 243
    goto :goto_0

    .end local v1           #isDistanceEnough:Z
    :cond_5
    move v1, v3

    .line 235
    goto :goto_1

    .line 229
    .end local v0           #distance:F
    .end local v2           #ratio:F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isTagetExit()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetTracking:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 390
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 393
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 394
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 1
    .parameter "bTrue"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/hwcamera/ui/TargetView;->mBlocked:Z

    .line 141
    if-eqz p1, :cond_1

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->setVisibility(I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/TargetView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 167
    iput p1, p0, Lcom/android/hwcamera/ui/TargetView;->mDispalyOrientation:I

    .line 168
    return-void
.end method

.method public setDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    return-void
.end method

.method public setLocation(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->setLocation(II)V

    .line 340
    return-void
.end method

.method public setScale(II)V
    .locals 0
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 162
    iput p1, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    .line 163
    iput p2, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    .line 164
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "scaleX"

    .prologue
    .line 378
    iput p1, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    .line 379
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->setX(F)V

    .line 380
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "scaleY"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->setY(F)V

    .line 385
    return-void
.end method

.method public setTargetView(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
    .locals 5
    .parameter "targetTrackingData"

    .prologue
    const/4 v4, 0x1

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/ui/TargetView;->mTargetTracking:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    .line 119
    invoke-virtual {p1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/ui/TargetView;->transformToScreenCoordinate(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 120
    .local v0, rectTemp:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, v3}, Lcom/android/hwcamera/ui/TargetView;->setLocation(II)V

    .line 121
    invoke-virtual {p1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->getFocusStatus()I

    move-result v1

    .line 122
    .local v1, status:I
    if-ne v1, v4, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->showFocusingTarget()V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->cancelFocusingTarget()V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/ui/TargetView;->showSuccess(Z)V

    goto :goto_0
.end method

.method public setX(F)V
    .locals 6
    .parameter "x"

    .prologue
    const/high16 v5, 0x428c

    const/high16 v4, 0x4000

    .line 348
    iput p1, p0, Lcom/android/hwcamera/ui/TargetView;->x:F

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 350
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 351
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 352
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterDrawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 354
    return-void
.end method

.method public setY(F)V
    .locals 6
    .parameter "y"

    .prologue
    const/high16 v5, 0x428c

    const/high16 v4, 0x4000

    .line 358
    iput p1, p0, Lcom/android/hwcamera/ui/TargetView;->y:F

    .line 359
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 360
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 361
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBottomRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mSideDrawableHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->scaleX:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 363
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/ui/TargetView;->ratio:F

    iget v3, p0, Lcom/android/hwcamera/ui/TargetView;->mCenterDrawableHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 364
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->showFail()V

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    .line 316
    return-void
.end method

.method public showFocuing()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 290
    iget v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->showStart()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->showFocuing()V

    .line 294
    iput v3, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    .line 295
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    return-void
.end method

.method public showFocusingTarget()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->showFocusingTarget()V

    .line 300
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->showStart()V

    .line 286
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    .line 287
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/hwcamera/ui/TargetView;->mFocusViewAnmition:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->showSuccess()V

    .line 309
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/ui/TargetView;->state:I

    .line 310
    return-void
.end method

.method public startTargetTrakingUI()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 149
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/TargetView;->mBlocked:Z

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->setVisibility(I)V

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/TargetView;->mStarted:Z

    .line 153
    return-void
.end method

.method public stopTargetTrakingUI()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 157
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/TargetView;->setVisibility(I)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/TargetView;->mStarted:Z

    .line 159
    return-void
.end method

.method public transformToPreviewCoordinate(II)Landroid/graphics/Rect;
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v3

    .line 202
    .local v3, sn:Lcom/android/hwcamera/CameraScreenNail;
    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v2

    .line 203
    .local v2, rw:I
    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v1

    .line 205
    .local v1, rh:I
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mDispalyOrientation:I

    sparse-switch v6, :sswitch_data_0

    .line 219
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    mul-int/2addr v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v1

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v4, v6

    .line 220
    .local v4, xTemp:I
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    mul-int/2addr v6, p1

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    mul-double/2addr v6, v8

    int-to-double v8, v2

    div-double/2addr v6, v8

    double-to-int v5, v6

    .line 223
    .local v5, yTemp:I
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v0, rect:Landroid/graphics/Rect;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    return-object v0

    .line 207
    .end local v0           #rect:Landroid/graphics/Rect;
    .end local v4           #xTemp:I
    .end local v5           #yTemp:I
    :sswitch_0
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    mul-int/2addr v6, p1

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    mul-double/2addr v6, v8

    int-to-double v8, v1

    div-double/2addr v6, v8

    double-to-int v4, v6

    .line 208
    .restart local v4       #xTemp:I
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    mul-int/2addr v6, p2

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    mul-double/2addr v6, v8

    int-to-double v8, v2

    div-double/2addr v6, v8

    double-to-int v5, v6

    .line 209
    .restart local v5       #yTemp:I
    goto :goto_0

    .line 211
    .end local v4           #xTemp:I
    .end local v5           #yTemp:I
    :sswitch_1
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    mul-int/2addr v6, p2

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    mul-double/2addr v6, v8

    int-to-double v8, v1

    div-double/2addr v6, v8

    double-to-int v4, v6

    .line 212
    .restart local v4       #xTemp:I
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    mul-int/2addr v8, p1

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v2

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    .line 213
    .restart local v5       #yTemp:I
    goto :goto_0

    .line 215
    .end local v4           #xTemp:I
    .end local v5           #yTemp:I
    :sswitch_2
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    iget v7, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    mul-int/2addr v7, p1

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    int-to-double v9, v1

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v4, v6, v7

    .line 216
    .restart local v4       #xTemp:I
    iget v6, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    iget v7, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    mul-int/2addr v7, p2

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    int-to-double v9, v2

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v5, v6, v7

    .line 217
    .restart local v5       #yTemp:I
    goto :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
    .end sparse-switch
.end method

.method public transformToScreenCoordinate(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12
    .parameter "target"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/TargetView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v3

    .line 172
    .local v3, sn:Lcom/android/hwcamera/CameraScreenNail;
    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v2

    .line 173
    .local v2, rw:I
    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v1

    .line 174
    .local v1, rh:I
    const/4 v4, 0x0

    .local v4, x:I
    const/4 v6, 0x0

    .line 175
    .local v6, y:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    .line 176
    .local v5, xTemp:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x2

    .line 177
    .local v7, yTemp:I
    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mDispalyOrientation:I

    sparse-switch v8, :sswitch_data_0

    .line 191
    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    sub-int/2addr v8, v5

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v6, v8

    .line 192
    int-to-double v8, v7

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 195
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 196
    .local v0, rect:Landroid/graphics/Rect;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    return-object v0

    .line 179
    .end local v0           #rect:Landroid/graphics/Rect;
    :sswitch_0
    int-to-double v8, v5

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 180
    int-to-double v8, v7

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v6, v8

    .line 181
    goto :goto_0

    .line 183
    :sswitch_1
    int-to-double v8, v5

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v6, v8

    .line 184
    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    sub-int/2addr v8, v7

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 185
    goto :goto_0

    .line 187
    :sswitch_2
    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    sub-int/2addr v8, v5

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewWidth:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 188
    iget v8, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    sub-int/2addr v8, v7

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/android/hwcamera/ui/TargetView;->mPreviewHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v6, v8

    .line 189
    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
    .end sparse-switch
.end method
